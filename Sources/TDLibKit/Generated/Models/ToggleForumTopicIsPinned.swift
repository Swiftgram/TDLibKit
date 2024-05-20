//
//  ToggleForumTopicIsPinned.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Changes the pinned state of a forum topic; requires can_manage_topics right in the supergroup. There can be up to getOption("pinned_forum_topic_count_max") pinned forum topics
public struct ToggleForumTopicIsPinned: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Pass true to pin the topic; pass false to unpin it
    public let isPinned: Bool?

    /// Message thread identifier of the forum topic
    public let messageThreadId: Int64?


    public init(
        chatId: Int64?,
        isPinned: Bool?,
        messageThreadId: Int64?
    ) {
        self.chatId = chatId
        self.isPinned = isPinned
        self.messageThreadId = messageThreadId
    }
}

