# TDLibKit

[![CI](https://github.com/Swiftgram/TDLibKit/actions/workflows/ci.yml/badge.svg)](https://github.com/Swiftgram/TDLibKit/actions/workflows/ci.yml)

TDLibKit is a native Swift wrapper for [TDLib](https://github.com/tdlib/td) with support for iOS, macOS, watchOS, tvOS and visionOS.

Powered by pre-built multi-platform [TDLibFramework](https://github.com/Swiftgram/TDLibFramework) implementation
of [TDLib](https://github.com/tdlib/td) and generated sources with [tl2swift](scripts/tl2swift)

## Installation

### Xcode

1. Install Latest Xcode
2. Add `https://github.com/Swiftgram/TDLibKit` as SPM dependency in `Project > Swift Packages`. This could take a while
   cause it downloads ~300mb zip file with binary
   from [TDLibFramework dependency](https://github.com/Swiftgram/TDLibFramework)
3. Add `TDLibKit` as your target dependency.
4. Code!

### Cocoapods

Integration requires similar
to [TDLibFramework Cocoapods & Flutter guide](https://github.com/Swiftgram/TDLibFramework/blob/main/docs/COCOAPODS-and-FLUTTER.md)
adaptation.

## Usage

Library provides multiple API interfaces based on different approaches

- [Async/Await](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/concurrency/) syntax & do/catch. Available for iOS
  13.0+, macOS 10.15+, watchOS 6.0+, tvOS 13.0+, visionOS
- Completion handlers & closures

### Create client Manager

```swift
import TDLibKit
let manager = TDLibClientManager()
```

Make sure to create only one `TDLibClientManager`, since `td_receive` can be only called from a single thread.

Manager automatically polls for new updates, we will handle them per-client below.

### Create Client & Handle updates

```swift
let client = manager.createClient(updateHandler: { /* data: Data, client: TDLibCLient */
    do {
        let update = try $1.decoder.decode(Update.self, from: $0)
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
})
```

### Synchronious requests

Only for methods
with "[Can be called synchronously](https://github.com/tdlib/td/blob/73d8fb4b3584633b0ffde97a20bbff6602e7a5c4/td/generate/scheme/td_api.tl#L4294)"
in docs

```swift
let query = SetLogVerbosityLevel(newVerbosityLevel: 5)
do {
    let result = try client.execute(query: DTO(query))
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

#### Async/Await

```swift
do {
    let chatHistory = try await client.getChatHistory(
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
try? client.getChatHistory(
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

### Logging

You can pass additional parameter with `Logger` type to log "send, receive, execute" and custom entries.

```swift
import TDLibKit
public final class StdOutLogger: TDLibLogger {
    
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


let manager = TDLibClientManager(logger: StdOutLogger())
```

### Close client

To ensure data integrity, you must properly close all the clients on app termination, either with
    
```swift
let client = manager.createClient()
try? client.close(completion: { _ in })
```

or use a blocking function

```swift
manager.closeClients()
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
