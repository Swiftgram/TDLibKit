//
//  EditForumTopic.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Edits title and icon of a topic in a forum supergroup chat; requires can_manage_topics right in the supergroup unless the user is creator of the topic
public struct EditForumTopic: Codable, Equatable, Hashable {

    /// Identifier of the chat
    public let chatId: Int64?

    /// Pass true to edit the icon of the topic. Icon of the General topic can't be edited
    public let editIconCustomEmoji: Bool?

    /// Identifier of the new custom emoji for topic icon; pass 0 to remove the custom emoji. Ignored if edit_icon_custom_emoji is false. Telegram Premium users can use any custom emoji, other users can use only a custom emoji returned by getForumTopicDefaultIcons
    public let iconCustomEmojiId: TdInt64?

    /// Message thread identifier of the forum topic
    public let messageThreadId: Int64?

    /// New name of the topic; 0-128 characters. If empty, the previous topic name is kept
    public let name: String?


    public init(
        chatId: Int64?,
        editIconCustomEmoji: Bool?,
        iconCustomEmojiId: TdInt64?,
        messageThreadId: Int64?,
        name: String?
    ) {
        self.chatId = chatId
        self.editIconCustomEmoji = editIconCustomEmoji
        self.iconCustomEmojiId = iconCustomEmojiId
        self.messageThreadId = messageThreadId
        self.name = name
    }
}

