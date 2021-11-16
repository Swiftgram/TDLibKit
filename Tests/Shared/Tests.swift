import TDLibKit
import XCTest

#if os(iOS)
@testable import iOSApp
#elseif os(macOS)
@testable import macOSApp
#elseif os(watchOS)
@testable import watchOSApp_WatchKit_Extension
#elseif os(tvOS)
@testable import tvOSApp
#endif

public final class StdOutLogger: Logger {
    
    let queue: DispatchQueue
    
    public init() {
        queue = DispatchQueue(label: "Logger", qos: .userInitiated)
    }
    
    public func log(_ message: String, type: LoggerMessageType?) {
        queue.async {
            var fisrtLine = "---------------------------"
            if let type = type {
                fisrtLine = ">> \(type.description): ---------------"
            }
            print("""
                \(fisrtLine)
                \(message)
                ---------------------------
                """)
        }
    }
}

class TDLibKitTests: XCTestCase {
    var client: TdClientImpl!
    var api: TdApi!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        self.client = TdClientImpl(logger: StdOutLogger())
        self.api = TdApi(client: self.client)
        self.client.run(updateHandler: { _ in })
        
        guard let cachesUrl = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first else {
            XCTFail("Unable to get cache path")
            return
        }
        let tdlibPath = cachesUrl.appendingPathComponent("tdlib", isDirectory: true).path
        let params = TdlibParameters(
            apiHash: "5e6d7b36f0e363cf0c07baf2deb26076", // https://core.telegram.org/api/obtaining_api_id
            apiId: 287311,
            applicationVersion: "1.0",
            databaseDirectory: tdlibPath,
            deviceModel: "iOS",
            enableStorageOptimizer: true,
            filesDirectory: "",
            ignoreFileNames: true,
            systemLanguageCode: "en",
            systemVersion: "Unknown",
            useChatInfoDatabase: true,
            useFileDatabase: true,
            useMessageDatabase: true,
            useSecretChats: true,
            useTestDc: false)
    
        let _ = Task {
            let _ = try! await api.setTdlibParameters(parameters: params)
            let authState = try! await api.getAuthorizationState()
            switch (authState) {
                case .authorizationStateWaitEncryptionKey:
                    break
                default:
                    XCTFail("Auth state is not ready. It's \(authState)")
            }
            let _ = try! await api.checkDatabaseEncryptionKey(encryptionKey: nil)
        }
    }
    
    override func tearDownWithError() throws {
        // api.client.close()
        try super.tearDownWithError()
    }
    
    func testConfigs() async {
        async let config1 = try! api.getApplicationConfig()
        async let config2 = try! api.getApplicationConfig()
        async let config3 = try! api.getApplicationConfig()
        async let config4 = try! api.getApplicationConfig()
        async let config5 = try! api.getApplicationConfig()
        async let config6 = try! api.getApplicationConfig()
        async let config7 = try! api.getApplicationConfig()
        async let config8 = try! api.getApplicationConfig()
        async let config9 = try! api.getApplicationConfig()
        async let config10 = try! api.getApplicationConfig()
        
        let configs = await [config1, config2, config3, config4, config5, config6, config7, config8, config9, config10]
        print("Application Configs \(configs)")
    }
}
