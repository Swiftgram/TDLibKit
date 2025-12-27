//
//  CreateForumTopic.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Creates a topic in a forum supergroup chat or a chat with a bot with topics; requires can_manage_topics administrator or can_create_topics member right in the supergroup
public struct CreateForumTopic: Codable, Equatable, Hashable {

    /// Identifier of the chat
    public let chatId: Int64?

    /// Icon of the topic. Icon color must be one of 0x6FB9F0, 0xFFD67E, 0xCB86DB, 0x8EEE98, 0xFF93B2, or 0xFB6F5F. Telegram Premium users can use any custom emoji as topic icon, other users can use only a custom emoji returned by getForumTopicDefaultIcons
    public let icon: ForumTopicIcon?

    /// Pass true if the name of the topic wasn't entered explicitly; for chats with bots only
    public let isNameImplicit: Bool?

    /// Name of the topic; 1-128 characters
    public let name: String?


    public init(
        chatId: Int64?,
        icon: ForumTopicIcon?,
        isNameImplicit: Bool?,
        name: String?
    ) {
        self.chatId = chatId
        self.icon = icon
        self.isNameImplicit = isNameImplicit
        self.name = name
    }
}

