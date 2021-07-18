# TDLibKit

[![CI](https://github.com/Swiftgram/TDLibKit/actions/workflows/ci.yml/badge.svg)](https://github.com/Swiftgram/TDLibKit/actions/workflows/ci.yml)

TDLibKit is a native Swift wrapper for [TDLib](https://github.com/tdlib/td) with support for iOS, macOS, watchOS and even tvOS.

Powered by pre-built multi-platform [TDLibFramework](https://github.com/Swiftgram/TDLibFramework) implementation of [TDLib](https://github.com/tdlib/td) and generated sources with [tl2swift](https://github.com/Swiftgram/tl2swift)

### Installation
1. Install Xcode 12.5+
2. Add https://github.com/Swiftgram/TDLibKit as SPM dependency in `Project > Swift Packages`. 
This could take a while cause it downloads ~300mb zip file with binary from [TDLibFramework dependency](https://github.com/Swiftgram/TDLibFramework)
3. Add `arm64` to `EXCLUDED_ARCHS` due to lack of [arm64 support](#m1-support) or use `ONLY_ACTIVE_ARCH=YES` for debug builds on Intel CPU.
4. Add `TDLibKit` as your target dependency.
5. Add `libz.1.tbd` and `libc++.1.tbd` as your target dependencies.
6. If something is not accesible from TDLibFramework, make sure to add `libSystem.B.tbd` for all platforms and `libc++abi.tbd` if you're building non-macOS app. [Source](https://github.com/modestman/tdlib-swift/blob/master/td-xcframework/td.xcodeproj/project.pbxproj#L301)
7. Code!


### Usage
#### Create Client & API instance
```swift
import TDLibKit
let client = TdClientImpl(completionQueue: .main)
let api: TdApi = TdApi(client: client)
```

#### Synchronious requests
Only for methods with "[Can be called synchronously](https://github.com/tdlib/td/blob/73d8fb4b3584633b0ffde97a20bbff6602e7a5c4/td/generate/scheme/td_api.tl#L4294)" in docs
```swift
let query = SetLogVerbosityLevel(newVerbosityLevel: 5)
let result = api.client.execute(query: DTO(query))

if case .failure(let error) = result {
    print("Error in SetLogVerbosityLevel request \(error.localizedDescription)")
} else if let resultData = try? result.get() {
    print("Response dict \(resultData)")
} else {
    print("Empty Response")
}
```


#### Async requests
```swift
try? api.getChatHistory(
            chatId: chatId,
            fromMessageId: 0,
            limit: 50,
            offset: 0,
            onlyLocal: false, // Request remote messages from server
            completion: { result in
                // Handle Errors
                if case .failure(let error) = result {
                    self.delegate?.onError(error)
                    print("Error in getChatHistory request \(error.localizedDescription)")
                } else if let messages = try? result.get().messages {
                    // Handle messages
                    for message in messages {
                        switch message.content {
                        case .messageText(let text):
                            print(text.text.text)
                            
                        case .messageAnimation:
                            print("<Animation>")

                        case .messagePhoto(let photo):
                            print("<Photo>\n\(photo.caption.text)")
                            
                        case .messageSticker(let sticker):
                            print(sticker.sticker.emoji)
                            
                        case .messageVideo(let video):
                            print("<Video>\n\(video.caption.text)")
                        
                        // ...

                        default:
                            print("Unknown message content \(message.content)")
                        }
                    }
                }
            }
        )
```


#### Listen for updates
```swift
api.client.run {
    do {
        let update = try api.decoder.decode(Update.self, from: $0)
        switch update {
            case .updateNewMessage(let newMsg):
                switch newMsg.message.content {
                    case .messageText(let text):
                        print("Text Message: \(text.text.text)")
                    default:
                        break
                }
            case .updateMessageEdited:
                break
                
            // ... etc

            default:
                print("Unhandled Update \(update)")
                break
        }
    } catch {
        print("Error in update handler \(error.localizedDescription)")
    }
}
```


### Logging
You can pass additional parameter with `Logger` type to log "send, receive, execute" and custom entries. 
```swift
import TDLibKit
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


let client = TdClientImpl(completionQueue: .main, logger: StdOutLogger())
```

### Build
You can find more about build process in [Github Actions](.github/workflows/ci.yml) file.


### M1 Support
**TLDR** - No M1 support. Use Apple Rosetta.

Covered in [TDLibFramework readme](https://github.com/Swiftgram/TDLibFramework#m1-support) 

### Credits
- Anton Glezman for [Build Guide](https://github.com/modestman/tdlib-swift), [TL Scheme parser](https://github.com/modestman/tl2swift) and basic implementation
- Leo Mehlig for [TDLib-iOS](https://github.com/leoMehlig/TDLib-iOS) and contributions to run TDLib on Swift
- Telegram Team for [TDLib](https://github.com/tdlib/td)


### License
[MIT](LICENSE)
