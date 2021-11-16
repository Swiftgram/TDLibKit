import Foundation
import TDLibFramework


@available(iOS 15.0, macOS 12.0, watchOS 8.0, tvOS 15.0, *)
actor AtomicStorage {

    private var storage: [String: Data]
    
    init() {
        self.storage = [:]
    }
        
    func get(_ key: String) -> Data? {
        storage[key]
    }
    
    func set(_ key: String, value: Data) {
        storage[key] = value
    }
    
    func del(_ key: String) {
        storage.removeValue(forKey: key)
    }

    var allValues: [String: Data] {
        storage
    }
}

@available(iOS 15.0, macOS 12.0, watchOS 8.0, tvOS 15.0, *)
open class AsyncTdClientImpl: AsyncTdClient {
    
    public typealias CompletionHandler = (Data) -> Void
    
    private var client: UnsafeMutableRawPointer!
    private var running = true
    private let logger: Logger?
    private var isClientDestroyed = true
    private var availableResponses = AtomicStorage()
    private var updateHandler: ((Data) -> Void)?
    
    public init(logger: Logger? = nil) {
        self.logger = logger
    }
    
    deinit {
        close()
    }
    
    public func close() {
        guard !isClientDestroyed else { return }
        if running {
            Task {
                let _ = try await send(query: DTO(Close()))
                self.running = false
            }
        }
        while true {
            if !self.running { break }
        }
        isClientDestroyed = true
        td_json_client_destroy(client)
    }
    
    /// Creates client and starts updates poller to work with async requests
    public func start() {
        createClientIfNeeded()
        guard !self.isClientDestroyed else { return }
        self.running = true
        Task.detached {
            await self.pollUpdates()
        }
    }
    
    /// Continuously listen for updates and process them via provided updateHandler
    public func run(updateHandler: @escaping CompletionHandler) {
        self.updateHandler = updateHandler
        guard running else { start(); return }
    }
    
    
    
    /// Asynchronously Sends request to the TDLib client.
    public func send(query: TdQuery) async throws -> Data {
        guard running else { throw Error(code: 400, message: "Client is not running. Make sure to call start() before async request!") }
        guard !isClientDestroyed else { throw Error(code: 400, message: "td_json_client destroyed!") }
        
        let extra: String = UUID().uuidString
        if let data = try? query.make(with: extra), let str = String(data: data, encoding: .utf8) {
            self.logger?.log(str, type: .send)
            td_json_client_send(self.client, str)
            
            while true {
                if let response = await self.availableResponses.get(extra) {
                    await self.availableResponses.del(extra)
                    return response
                }
            }
        } else {
            throw Error(code: 500, message: "Unable to prepare send request")
        }
    }
    
    /// Synchronously executes TDLib request.
    public func execute(query: TdQuery) throws -> [String:Any]? {
        guard !isClientDestroyed else { throw Error(code: 404, message: "Client destroyed") }
        
        do {
            let data = try query.make(with: nil)
            let str = String(data: data, encoding: .utf8)!
            logger?.log(str, type: .execute)
            if let res = td_json_client_execute(client, str) {
                let resString = String(cString: res)
                logger?.log(resString, type: .receive)
                let resData = resString.data(using: .utf8)
                let json = try JSONSerialization.jsonObject(with: resData!, options:[])
                let dictionary = json as! [String:Any]
                return dictionary
            } else {
                throw Error(code: 404, message: "Empty response from TDLib")
            }
        } catch {
            throw error
        }
    }
    
    
    // MARK: - Private methods
    
    private func pollUpdates() async {
        while self.running && !self.isClientDestroyed {
            guard
                let res = td_json_client_receive(self.client, 10),
                let data = String(cString: res).data(using: .utf8)
            else {
                continue
            }
            self.logger?.log(String(cString: res), type: .receive)
            Task.detached {
                await self.handleResponses(data)
            }
        }
    }
    
    private func handleResponses(_ result: Data) async {
        guard
            let json = try? JSONSerialization.jsonObject(with: result, options:[]),
            let dictionary = json as? [String:Any]
        else {
            return
        }
        
        if let extraStr = dictionary["@extra"] as? String {
            await self.availableResponses.set(extraStr, value: result)
        } else {
            if self.checkClosingUpdate(dictionary) {
                self.running = false
            }
            Task.detached {
                self.updateHandler?(result)
            }
        }
    }
    
    
    private func createClientIfNeeded() {
        if isClientDestroyed {
            client = td_json_client_create()
            isClientDestroyed = false
        }
    }
    
    private func checkClosingUpdate(_ dict: [String: Any]) -> Bool {
        if let state = dict["authorization_state"] as? [String: Any],
           (state["@type"] as? String) == "authorizationStateClosed" {
            return true
        }
        return false
    }
}

