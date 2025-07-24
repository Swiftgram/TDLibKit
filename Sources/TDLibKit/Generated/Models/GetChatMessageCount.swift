//
//  GetChatMessageCount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
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

    /// Pass topic identifier to get number of messages only in specific topic; pass null to get number of messages in all topics
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

