//
//  DeleteDirectMessagesChatTopicMessagesByDate.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Deletes all messages between the specified dates in the topic in a channel direct messages chat administered by the current user. Messages sent in the last 30 seconds will not be deleted
public struct DeleteDirectMessagesChatTopicMessagesByDate: Codable, Equatable, Hashable {

    /// Chat identifier of the channel direct messages chat
    public let chatId: Int64?

    /// The maximum date of the messages to delete
    public let maxDate: Int?

    /// The minimum date of the messages to delete
    public let minDate: Int?

    /// Identifier of the topic which messages will be deleted
    public let topicId: Int64?


    public init(
        chatId: Int64?,
        maxDate: Int?,
        minDate: Int?,
        topicId: Int64?
    ) {
        self.chatId = chatId
        self.maxDate = maxDate
        self.minDate = minDate
        self.topicId = topicId
    }
}

