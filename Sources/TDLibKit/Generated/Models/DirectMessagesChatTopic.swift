//
//  DirectMessagesChatTopic.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-5c77c469
//  https://github.com/tdlib/td/tree/5c77c469
//

import Foundation


/// Contains information about a topic in a channel direct messages chat administered by the current user
public struct DirectMessagesChatTopic: Codable, Equatable, Hashable, Identifiable {

    /// True, if the other party can send unpaid messages even if the chat has paid messages enabled
    public let canSendUnpaidMessages: Bool

    /// Identifier of the chat to which the topic belongs
    public let chatId: Int64

    /// A draft of a message in the topic; may be null if none
    public let draftMessage: DraftMessage?

    /// Unique topic identifier
    public let id: Int64

    /// True, if the forum topic is marked as unread
    public let isMarkedAsUnread: Bool

    /// Last message in the topic; may be null if none or unknown
    public let lastMessage: Message?

    /// Identifier of the last read incoming message
    public let lastReadInboxMessageId: Int64

    /// Identifier of the last read outgoing message
    public let lastReadOutboxMessageId: Int64

    /// A parameter used to determine order of the topic in the topic list. Topics must be sorted by the order in descending order
    public let order: TdInt64

    /// Identifier of the user or chat that sends the messages to the topic
    public let senderId: MessageSender

    /// Number of unread messages in the chat
    public let unreadCount: Int64

    /// Number of messages with unread reactions in the chat
    public let unreadReactionCount: Int64


    public init(
        canSendUnpaidMessages: Bool,
        chatId: Int64,
        draftMessage: DraftMessage?,
        id: Int64,
        isMarkedAsUnread: Bool,
        lastMessage: Message?,
        lastReadInboxMessageId: Int64,
        lastReadOutboxMessageId: Int64,
        order: TdInt64,
        senderId: MessageSender,
        unreadCount: Int64,
        unreadReactionCount: Int64
    ) {
        self.canSendUnpaidMessages = canSendUnpaidMessages
        self.chatId = chatId
        self.draftMessage = draftMessage
        self.id = id
        self.isMarkedAsUnread = isMarkedAsUnread
        self.lastMessage = lastMessage
        self.lastReadInboxMessageId = lastReadInboxMessageId
        self.lastReadOutboxMessageId = lastReadOutboxMessageId
        self.order = order
        self.senderId = senderId
        self.unreadCount = unreadCount
        self.unreadReactionCount = unreadReactionCount
    }
}

