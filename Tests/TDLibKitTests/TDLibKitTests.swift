import XCTest
@testable import TDLibKit


public final class StdOutLogger: Logger {
    
    let queue: DispatchQueue
    
    public init() {
        queue = DispatchQueue(label: "Logger", qos: .userInitiated)
    }
    
    public func log(_ message: String, type: LoggerMessageType?) {
        queue.async {
            var fisrtLine = ""
            if let type = type {
                fisrtLine = ">> \(type.description)"
            }
            NSLog("\(fisrtLine)\n\(message)\n---------------------------")
        }
    }
}


@available(iOS 13.0, *)
class TDLibKitTests: XCTestCase {
    var client: TdClientImpl!
    var api: TdApi!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        self.client = TdClientImpl(logger: StdOutLogger())
        self.api = TdApi(client: self.client)
        self.client.run { _ in }
        
        let query = SetLogVerbosityLevel(newVerbosityLevel: 5)
        do {
            let result = try api.client.execute(query: DTO(query))
            if let resultDict = result {
                if let resultTypeString = resultDict["@type"] as? String, resultTypeString == "ok" {
                    XCTAssertEqual(resultTypeString, "ok")
                } else {
                    XCTFail("Wrong response from SetLogVerbosityLevel \(resultDict)")
                }
            } else {
                XCTFail("Empty response for loglevel")
            }
        } catch {
            XCTFail("Error in SetLogVerbosityLevel request \(error.localizedDescription)")
        }
        
        guard let cachesUrl = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first else {
            XCTFail("Unable to get cache path")
            return
        }
        let tdlibPath = cachesUrl.appendingPathComponent("tdlib", isDirectory: true).path
        
        let _ = Task {
            let _ = try! await api.setTdlibParameters(
                apiHash: "5e6d7b36f0e363cf0c07baf2deb26076", // https://core.telegram.org/api/obtaining_api_id
                apiId: 287311,
                applicationVersion: "1.0",
                databaseDirectory: tdlibPath,
                databaseEncryptionKey: nil,
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
            let authState = try! await api.getAuthorizationState()
            switch (authState) {
            case .authorizationStateWaitPhoneNumber:
                break
            default:
                XCTFail("Auth state is not ready. It's \(authState)")
            }
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

class TDLibKitUnitTests: XCTestCase {
    
    func testEquatableStructs() {
        let struct1 = AddContact(contact: Contact(firstName: "John", lastName: "Appleseed", phoneNumber: "+10000000000", userId: 123456789, vcard: "empty"), sharePhoneNumber: true)
        let struct2 = AddContact(contact: Contact(firstName: "Pavel", lastName: "Droider", phoneNumber: "+90000000000", userId: 777777777, vcard: "empty"), sharePhoneNumber: false)
        XCTAssertNotEqual(struct1, struct2)
        
        XCTAssertEqual(struct1, struct1)
    }
    
    func testEquatableStructsWithEnums() {
        let struct1 = EditMessageLiveLocation(
            chatId: 1234567, heading: 10, location: Location(horizontalAccuracy: 10.0, latitude: 358.0, longitude: 259.1), messageId: 12345, proximityAlertRadius: 30, replyMarkup: .replyMarkupInlineKeyboard(
                ReplyMarkupInlineKeyboard(
                    rows: [
                        [
                            InlineKeyboardButton(text: "Buy me!", type: .inlineKeyboardButtonTypeBuy)
                        ]
                    ]
                )
            )
        )
        
        let struct2 = EditMessageLiveLocation(
            chatId: 1234567, heading: 10, location: Location(horizontalAccuracy: 10.0, latitude: 358.0, longitude: 259.1), messageId: 12345, proximityAlertRadius: 30, replyMarkup: .replyMarkupInlineKeyboard(
                ReplyMarkupInlineKeyboard(
                    rows: [
                        [
                            InlineKeyboardButton(
                                text: "Ate me!",
                                type: .inlineKeyboardButtonTypeUrl(
                                    InlineKeyboardButtonTypeUrl(url: "https://telegram.org")
                                )
                            )
                        ]
                    ]
                )
            )
        )
        
        XCTAssertEqual(struct1, struct1)
        XCTAssertNotEqual(struct1, struct2)
    }
    
    func testEquatableErrors() {
        let error1 = Error(code: 500, message: "Internal Server Error")
        let error2 = Error(code: 403, message: "You're not alowed to do this")
        let error3 = Error(code: 500, message: "Server down")
        
        XCTAssertEqual(error1, error1)
        XCTAssertNotEqual(error1, error2)
        XCTAssertNotEqual(error1, error3)
    }
}
