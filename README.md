# TDLibKit

[![CI](https://github.com/Swiftgram/TDLibKit/actions/workflows/ci.yml/badge.svg)](https://github.com/Swiftgram/TDLibKit/actions/workflows/ci.yml)

TDLibKit is a native Swift wrapper for [TDLib](https://github.com/tdlib/td) with support for iOS, macOS, watchOS and
even tvOS.

Powered by pre-built multi-platform [TDLibFramework](https://github.com/Swiftgram/TDLibFramework) implementation
of [TDLib](https://github.com/tdlib/td) and generated sources with [tl2swift](scripts/tl2swift)

## Installation

### Xcode

1. Install Latest Xcode
2. Add `https://github.com/Swiftgram/TDLibKit` as SPM dependency in `Project > Swift Packages`. This could take a while
   cause it downloads ~300mb zip file with binary
   from [TDLibFramework dependency](https://github.com/Swiftgram/TDLibFramework)
3. Add `TDLibKit` as your target dependency.
4. Add `libz.1.tbd` and `libc++.1.tbd` as your target dependencies.
5. If something is not accesible from TDLibFramework, make sure to add `libSystem.B.tbd` for all platforms
   and `libc++abi.tbd` if you're building non-macOS
   app. [Source](https://github.com/modestman/tdlib-swift/blob/master/td-xcframework/td.xcodeproj/project.pbxproj#L301)
6. Code!

### Cocoapods

Integration requires similar
to [TDLibFramework Cocoapods & Flutter guide](https://github.com/Swiftgram/TDLibFramework/wiki/CocoaPods-&-Flutter)
adaptation.

## Usage

Library provides multiple API interfaces based on different approaches

- [Async/Await](https://docs.swift.org/swift-book/LanguageGuide/Concurrency.html) syntax & do/catch. Available for iOS
  13.0+, macOS 10.15+, watchOS 6.0+, tvOS 13.0+
- Completion handlers & closures

### Create Client & API instance

```swift
import TDLibKit
let client = TdClientImpl()
let api = TdApi(client: client)
```

### Synchronious requests

Only for methods
with "[Can be called synchronously](https://github.com/tdlib/td/blob/73d8fb4b3584633b0ffde97a20bbff6602e7a5c4/td/generate/scheme/td_api.tl#L4294)"
in docs

```swift
let query = SetLogVerbosityLevel(newVerbosityLevel: 5)
do {
    let result = try api.client.execute(query: DTO(query))
    if let resultDict = result {
        print("Response: \(resultDict)")
    } else {
        print("Empty result")
    }
} catch {
    print("Error in SetLogVerbosityLevel request \(error.localizedDescription)")
}
```

### Async requests

You must run _at least empty_ updates handler to get responses for async requests.

```swift
api.client.run { _ in }
```

#### Async/Await

```swift
do {
    let chatHistory = try await api.getChatHistory(
        chatId: chatId,
        fromMessageId: 0,
        limit: 50,
        offset: 0,
        onlyLocal: false // Request remote messages from server
    )

    for message in chatHistory.messages {
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
} catch {
    print("Error in getChatHistory \(error)")
}
```

#### Completion Handlers

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

### Listen for updates

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

## Build

You can find more about build process in [Github Actions](.github/workflows/ci.yml) file.

## Credits

- Anton Glezman for [Build Guide](https://github.com/modestman/tdlib-swift)
  , [TL Scheme parser](https://github.com/modestman/tl2swift) and basic implementation
- Leo Mehlig for [TDLib-iOS](https://github.com/leoMehlig/TDLib-iOS) and contributions to run TDLib on Swift
- Telegram Team for [TDLib](https://github.com/tdlib/td)

## License

[MIT](LICENSE)
