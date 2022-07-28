//
//  GetChatMessageCount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Returns approximate number of messages of the specified type in the chat
public struct GetChatMessageCount: Codable, Equatable {

    /// Identifier of the chat in which to count messages
    public let chatId: Int64?

    /// Filter for message content; searchMessagesFilterEmpty is unsupported in this function
    public let filter: SearchMessagesFilter?

    /// Pass true to get the number of messages without sending network requests, or -1 if the number of messages is unknown locally
    public let returnLocal: Bool?


    public init(
        chatId: Int64?,
        filter: SearchMessagesFilter?,
        returnLocal: Bool?
    ) {
        self.chatId = chatId
        self.filter = filter
        self.returnLocal = returnLocal
    }
}

