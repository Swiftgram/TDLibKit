//
//  SetChatAccentColor.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Changes accent color and background custom emoji of a channel chat. Requires can_change_info administrator right
public struct SetChatAccentColor: Codable, Equatable, Hashable {

    /// Identifier of the accent color to use. The chat must have at least accentColor.min_channel_chat_boost_level boost level to pass the corresponding color
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

