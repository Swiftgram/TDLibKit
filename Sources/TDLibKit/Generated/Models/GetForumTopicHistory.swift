//
//  GetForumTopicHistory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Returns messages in a topic in a forum supergroup chat or a chat with a bot with topics. The messages are returned in reverse chronological order (i.e., in order of decreasing message_id). For optimal performance, the number of returned messages is chosen by TDLib
public struct GetForumTopicHistory: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Forum topic identifier
    public let forumTopicId: Int?

    /// Identifier of the message starting from which history must be fetched; use 0 to get results from the last message
    public let fromMessageId: Int64?

    /// The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, then the limit must be greater than or equal to -offset. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// Specify 0 to get results from exactly the message from_message_id or a negative number from -99 to -1 to get additionally -offset newer messages
    public let offset: Int?


    public init(
        chatId: Int64?,
        forumTopicId: Int?,
        fromMessageId: Int64?,
        limit: Int?,
        offset: Int?
    ) {
        self.chatId = chatId
        self.forumTopicId = forumTopicId
        self.fromMessageId = fromMessageId
        self.limit = limit
        self.offset = offset
    }
}

