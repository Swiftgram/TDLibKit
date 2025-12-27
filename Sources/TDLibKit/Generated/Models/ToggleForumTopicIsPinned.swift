//
//  ToggleForumTopicIsPinned.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Changes the pinned state of a topic in a forum supergroup chat or a chat with a bot with topics; requires can_manage_topics administrator right in the supergroup. There can be up to getOption("pinned_forum_topic_count_max") pinned forum topics
public struct ToggleForumTopicIsPinned: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Forum topic identifier
    public let forumTopicId: Int?

    /// Pass true to pin the topic; pass false to unpin it
    public let isPinned: Bool?


    public init(
        chatId: Int64?,
        forumTopicId: Int?,
        isPinned: Bool?
    ) {
        self.chatId = chatId
        self.forumTopicId = forumTopicId
        self.isPinned = isPinned
    }
}

