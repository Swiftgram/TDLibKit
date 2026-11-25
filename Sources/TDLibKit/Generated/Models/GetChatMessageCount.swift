//
//  GetChatMessageCount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Returns the approximate number of messages of the specified type in the chat or its topic
public struct GetChatMessageCount: Codable, Equatable, Hashable {

    /// Identifier of the chat in which to count messages
    public let chatId: Int64?

    /// Filter for message content; searchMessagesFilterEmpty is unsupported in this function
    public let filter: SearchMessagesFilter?

    /// Pass true to get the number of messages without sending network requests, or -1 if the number of messages is unknown locally
    public let returnLocal: Bool?

    /// Pass a topic identifier to get the number of messages only in a specific topic; pass null to get the number of messages in all topics; message threads aren't supported
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

