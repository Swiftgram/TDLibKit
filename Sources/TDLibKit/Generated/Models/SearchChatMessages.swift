//
//  SearchChatMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Searches for messages with given words in the chat. Returns the results in reverse chronological order, i.e. in order of decreasing message_id. Cannot be used in secret chats with a non-empty query (searchSecretMessages must be used instead), or without an enabled message database. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit. A combination of query, sender_id, filter and topic_id search criteria is expected to be supported, only if it is required for Telegram official application implementation
public struct SearchChatMessages: Codable, Equatable, Hashable {

    /// Identifier of the chat in which to search messages
    public let chatId: Int64?

    /// Additional filter for messages to search; pass null to search for all messages
    public let filter: SearchMessagesFilter?

    /// Identifier of the message starting from which history must be fetched; use 0 to get results from the last message
    public let fromMessageId: Int64?

    /// The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than -offset. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// Specify 0 to get results from exactly the message from_message_id or a negative offset to get the specified message and some newer messages
    public let offset: Int?

    /// Query to search for
    public let query: String?

    /// Identifier of the sender of messages to search for; pass null to search for messages from any sender. Not supported in secret chats
    public let senderId: MessageSender?

    /// Pass topic identifier to search messages only in specific topic; pass null to search for messages in all topics
    public let topicId: MessageTopic?


    public init(
        chatId: Int64?,
        filter: SearchMessagesFilter?,
        fromMessageId: Int64?,
        limit: Int?,
        offset: Int?,
        query: String?,
        senderId: MessageSender?,
        topicId: MessageTopic?
    ) {
        self.chatId = chatId
        self.filter = filter
        self.fromMessageId = fromMessageId
        self.limit = limit
        self.offset = offset
        self.query = query
        self.senderId = senderId
        self.topicId = topicId
    }
}

