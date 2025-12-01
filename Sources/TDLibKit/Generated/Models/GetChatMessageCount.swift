//
//  GetChatMessageCount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
//

import Foundation


/// Returns approximate number of messages of the specified type in the chat or its topic
public struct GetChatMessageCount: Codable, Equatable, Hashable {

    /// Identifier of the chat in which to count messages
    public let chatId: Int64?

    /// Filter for message content; searchMessagesFilterEmpty is unsupported in this function
    public let filter: SearchMessagesFilter?

    /// Pass true to get the number of messages without sending network requests, or -1 if the number of messages is unknown locally
    public let returnLocal: Bool?

    /// Pass topic identifier to get number of messages only in specific topic; pass null to get number of messages in all topics; message threads aren't supported
    public let topicId: MessageTopic?


    public init(
        chatId: Int64?,
        filter: SearchMessagesFilter?,
        returnLocal: Bool?,
        topicId: MessageTopic?
    ) {
        self.chatId = chatId
        self.filter = filter
        self.returnLocal = returnLocal
        self.topicId = topicId
    }
}

