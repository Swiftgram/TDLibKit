//
//  CreateForumTopic.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Creates a topic in a forum supergroup chat; requires can_manage_topics administrator or can_create_topics member right in the supergroup
public struct CreateForumTopic: Codable, Equatable, Hashable {

    /// Identifier of the chat
    public let chatId: Int64?

    /// Icon of the topic. Icon color must be one of 0x6FB9F0, 0xFFD67E, 0xCB86DB, 0x8EEE98, 0xFF93B2, or 0xFB6F5F. Telegram Premium users can use any custom emoji as topic icon, other users can use only a custom emoji returned by getForumTopicDefaultIcons
    public let icon: ForumTopicIcon?

    /// Name of the topic; 1-128 characters
    public let name: String?


    public init(
        chatId: Int64?,
        icon: ForumTopicIcon?,
        name: String?
    ) {
        self.chatId = chatId
        self.icon = icon
        self.name = name
    }
}

