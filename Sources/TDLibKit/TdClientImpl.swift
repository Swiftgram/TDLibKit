//
//  TdClientImpl.swift
//
//  Created by Anton Glezman on 17/09/2019.
//  Copyright © 2019 Anton Glezman . All rights reserved.
//

import Foundation
import TDLibFramework


@available(*, deprecated, message: "will be removed; use TDLibClientManager")
open class TdClientImpl: TdClient {
    
    public typealias CompletionHandler = (Data) -> Void
    
    private var client: UnsafeMutableRawPointer!
    private let tdlibMainQueue = DispatchQueue(label: "TDLib", qos: .utility)
    private let tdlibQueryQueue = DispatchQueue(label: "TDLibQuery", qos: .userInitiated)
    private let completionQueue: DispatchQueue
    private var awaitingCompletions = [String: CompletionHandler]()
    private var updateHandler: ((Data) -> Void)?
    private let logger: Logger?
    private var isClientDestroyed = true
    private var stopFlag = false
    
    
    /// Instantiate a Tdlib Client
    ///
    /// - Parameter completionQueue: The serial operation queue used to dispatch all completion handlers. `.main` by default.
    /// - Parameter logger: The logger object for debug print all queries and responses
    public init(completionQueue: DispatchQueue = .main, logger: Logger? = nil) {
        self.completionQueue = completionQueue
        self.logger = logger
    }
    
    deinit {
        close()
    }
    
    public func close() {
        guard !isClientDestroyed else { return }
        if !stopFlag {
            try! send(query: DTO(Close()), completion: { _ in })
        }
    }
    
    /// Receives incoming updates and request responses from the TDLib client
    public func run(updateHandler: @escaping CompletionHandler) {
        self.updateHandler = updateHandler
        createClientIfNeeded()
        
        tdlibMainQueue.async { [weak self] in
            guard let self else { return }
            guard !self.isClientDestroyed else { return }
            
            while (!self.stopFlag) {
                guard
                    let res = td_json_client_receive(self.client, 10),
                    let data = String(cString: res).data(using: .utf8)
                else {
                    continue
                }
                self.logger?.log(String(cString: res), type: .receive)
                self.queryResultAsync(data)
            }
            self.isClientDestroyed = true
            td_json_client_destroy(self.client)
            self.stopFlag = false
        }
    }
    
    /// Sends request to the TDLib client.
    public func send(query: TdQuery, completion: (CompletionHandler)? = nil) throws {
        guard !self.isClientDestroyed else {
            logger?.log("Client destroyed. Query send aborted. Query: \(query)", type: .custom("Warning"))
            return
        }
        
        tdlibQueryQueue.async { [weak self] in
            guard let `self` = self else { return }
            var extra: String? = nil
            if let completion = completion {
                extra = UUID().uuidString
                self.awaitingCompletions[extra!] = completion
            }
            let data = try! query.make(with: extra)
            if let str = String(data: data, encoding: .utf8) {
                self.logger?.log(str, type: .send)
                td_json_client_send(self.client, str)
            } else {
                let errorText: String = "ERROR! Unable to encode query data, conversion returns nil"
                if let strongLogger = self.logger {
                    strongLogger.log(errorText, type: .send)
                } else {
                    print(errorText)
                }
            }
        }
    }
    
    /// Synchronously executes TDLib request.
    public func execute(query: TdQuery) throws -> [String:Any]? {
        guard !self.isClientDestroyed else {
            logger?.log("Client destroyed. Execution aborted. Query: \(query)", type: .custom("Warning"))
            return nil
        }
        
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
    
    private func createClientIfNeeded() {
        if isClientDestroyed {
            client = td_json_client_create()
            isClientDestroyed = false
        }
    }
    
    private func queryResultAsync(_ result: Data) {
        tdlibQueryQueue.async { [weak self] in
            guard
                let `self` = self,
                let json = try? JSONSerialization.jsonObject(with: result, options:[]),
                let dictionary = json as? [String:Any]
            else {
                return
            }
            
            if let extraStr = dictionary["@extra"] as? String {
                if let completion = self.awaitingCompletions[extraStr] {
                    self.completionQueue.async {
                        completion(result)
                    }
                    self.awaitingCompletions.removeValue(forKey: extraStr)
                }
            } else {
                if self.checkClosingUpdate(dictionary) {
                    self.stopFlag = true
                }
                self.completionQueue.async {
                    self.updateHandler?(result)
                }
            }
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
