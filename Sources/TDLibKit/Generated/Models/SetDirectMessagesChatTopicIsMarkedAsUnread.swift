//
//  SetDirectMessagesChatTopicIsMarkedAsUnread.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Changes the marked as unread state of the topic in a channel direct messages chat administered by the current user
public struct SetDirectMessagesChatTopicIsMarkedAsUnread: Codable, Equatable, Hashable {

    /// Chat identifier of the channel direct messages chat
    public let chatId: Int64?

    /// New value of is_marked_as_unread
    public let isMarkedAsUnread: Bool?

    /// Topic identifier
    public let topicId: Int64?


    public init(
        chatId: Int64?,
        isMarkedAsUnread: Bool?,
        topicId: Int64?
    ) {
        self.chatId = chatId
        self.isMarkedAsUnread = isMarkedAsUnread
        self.topicId = topicId
    }
}

