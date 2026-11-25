//
//  GetChatMessageCounts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Returns approximate numbers of messages of the specified types in the chat or its topic
public struct GetChatMessageCounts: Codable, Equatable, Hashable {

    /// Identifier of the chat in which to count messages
    public let chatId: Int64?

    /// Filters for message content; searchMessagesFilterEmpty is unsupported in this function
    public let filters: [SearchMessagesFilter]?

    /// Pass true to get the numbers of messages without sending network requests; -1 is returned for the numbers of messages, which are unknown locally
    public let returnLocal: Bool?

    /// Pass a topic identifier to get the numbers of messages only in a specific topic; pass null to get the numbers of messages in all topics; message threads aren't supported
    public let topicId: MessageTopic?


    public init(
        chatId: Int64?,
        filters: [SearchMessagesFilter]?,
        returnLocal: Bool?,
        topicId: MessageTopic?
    ) {
        self.chatId = chatId
        self.filters = filters
        self.returnLocal = returnLocal
        self.topicId = topicId
    }
}

