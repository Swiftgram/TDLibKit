//
//  EditForumTopic.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.8-3ec53c8d
//  https://github.com/tdlib/td/tree/3ec53c8d
//

import Foundation


/// Edits title and icon of a topic in a forum supergroup chat; requires can_manage_topics administrator rights in the supergroup unless the user is creator of the topic
public struct EditForumTopic: Codable, Equatable {

    /// Identifier of the chat
    public let chatId: Int64?

    /// Identifier of the new custom emoji for topic icon. Telegram Premium users can use any custom emoji, other users can use only a custom emoji returned by getForumTopicDefaultIcons
    public let iconCustomEmojiId: TdInt64?

    /// Message thread identifier of the forum topic
    public let messageThreadId: Int64?

    /// New name of the topic; 1-128 characters
    public let name: String?


    public init(
        chatId: Int64?,
        iconCustomEmojiId: TdInt64?,
        messageThreadId: Int64?,
        name: String?
    ) {
        self.chatId = chatId
        self.iconCustomEmojiId = iconCustomEmojiId
        self.messageThreadId = messageThreadId
        self.name = name
    }
}

