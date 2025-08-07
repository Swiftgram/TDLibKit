//
//  GetDirectMessagesChatTopicMessageByDate.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-4269f54e
//  https://github.com/tdlib/td/tree/4269f54e
//

import Foundation


/// Returns the last message sent in the topic in a channel direct messages chat administered by the current user no later than the specified date
public struct GetDirectMessagesChatTopicMessageByDate: Codable, Equatable, Hashable {

    /// Chat identifier of the channel direct messages chat
    public let chatId: Int64?

    /// Point in time (Unix timestamp) relative to which to search for messages
    public let date: Int?

    /// Identifier of the topic which messages will be fetched
    public let topicId: Int64?


    public init(
        chatId: Int64?,
        date: Int?,
        topicId: Int64?
    ) {
        self.chatId = chatId
        self.date = date
        self.topicId = topicId
    }
}

