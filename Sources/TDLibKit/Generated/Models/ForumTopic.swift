//
//  ForumTopic.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a forum topic
public struct ForumTopic: Codable, Equatable, Hashable {

    /// A draft of a message in the topic; may be null if none
    public let draftMessage: DraftMessage?

    /// Basic information about the topic
    public let info: ForumTopicInfo

    /// True, if the topic is pinned in the topic list
    public let isPinned: Bool

    /// Last message in the topic; may be null if unknown
    public let lastMessage: Message?

    /// Identifier of the last read incoming message
    public let lastReadInboxMessageId: Int64

    /// Identifier of the last read outgoing message
    public let lastReadOutboxMessageId: Int64

    /// Notification settings for the topic
    public let notificationSettings: ChatNotificationSettings

    /// Number of unread messages in the topic
    public let unreadCount: Int

    /// Number of unread messages with a mention/reply in the topic
    public let unreadMentionCount: Int

    /// Number of messages with unread reactions in the topic
    public let unreadReactionCount: Int


    public init(
        draftMessage: DraftMessage?,
        info: ForumTopicInfo,
        isPinned: Bool,
        lastMessage: Message?,
        lastReadInboxMessageId: Int64,
        lastReadOutboxMessageId: Int64,
        notificationSettings: ChatNotificationSettings,
        unreadCount: Int,
        unreadMentionCount: Int,
        unreadReactionCount: Int
    ) {
        self.draftMessage = draftMessage
        self.info = info
        self.isPinned = isPinned
        self.lastMessage = lastMessage
        self.lastReadInboxMessageId = lastReadInboxMessageId
        self.lastReadOutboxMessageId = lastReadOutboxMessageId
        self.notificationSettings = notificationSettings
        self.unreadCount = unreadCount
        self.unreadMentionCount = unreadMentionCount
        self.unreadReactionCount = unreadReactionCount
    }
}

