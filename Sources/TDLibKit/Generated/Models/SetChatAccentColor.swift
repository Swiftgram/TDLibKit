//
//  SetChatAccentColor.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-1a50ec47
//  https://github.com/tdlib/td/tree/1a50ec47
//

import Foundation


/// Changes accent color and background custom emoji of a chat. Supported only for channels with getOption("channel_custom_accent_color_boost_level_min") boost level. Requires can_change_info administrator right
public struct SetChatAccentColor: Codable, Equatable, Hashable {

    /// Identifier of the accent color to use
    public let accentColorId: Int?

    /// Identifier of a custom emoji to be shown on the reply header background; 0 if none
    public let backgroundCustomEmojiId: TdInt64?

    /// Chat identifier
    public let chatId: Int64?


    public init(
        accentColorId: Int?,
        backgroundCustomEmojiId: TdInt64?,
        chatId: Int64?
    ) {
        self.accentColorId = accentColorId
        self.backgroundCustomEmojiId = backgroundCustomEmojiId
        self.chatId = chatId
    }
}

