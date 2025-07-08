//
//  GetDirectMessagesChatTopicHistory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6c8bfbb5
//  https://github.com/tdlib/td/tree/6c8bfbb5
//

import Foundation


/// Returns messages in the topic in a channel direct messages chat administered by the current user. The messages are returned in reverse chronological order (i.e., in order of decreasing message_id)
public struct GetDirectMessagesChatTopicHistory: Codable, Equatable, Hashable {

    /// Chat identifier of the channel direct messages chat
    public let chatId: Int64?

    /// Identifier of the message starting from which messages must be fetched; use 0 to get results from the last message
    public let fromMessageId: Int64?

    /// The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than or equal to -offset. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// Specify 0 to get results from exactly the message from_message_id or a negative offset up to 99 to get additionally some newer messages
    public let offset: Int?

    /// Identifier of the topic which messages will be fetched
    public let topicId: Int64?


    public init(
        chatId: Int64?,
        fromMessageId: Int64?,
        limit: Int?,
        offset: Int?,
        topicId: Int64?
    ) {
        self.chatId = chatId
        self.fromMessageId = fromMessageId
        self.limit = limit
        self.offset = offset
        self.topicId = topicId
    }
}

