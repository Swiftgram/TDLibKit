//
//  SetChatAccentColor.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.24-437c2d0c
//  https://github.com/tdlib/td/tree/437c2d0c
//

import Foundation


/// Changes accent color and background custom emoji of a chat. Requires can_change_info administrator right
public struct SetChatAccentColor: Codable, Equatable, Hashable {

    /// Identifier of the accent color to use. The chat must have at least accentColor.min_chat_boost_level boost level to pass the corresponding color
    public let accentColorId: Int?

    /// Identifier of a custom emoji to be shown on the reply header and link preview background; 0 if none. Use chatBoostLevelFeatures.can_set_background_custom_emoji to check whether a custom emoji can be set
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

