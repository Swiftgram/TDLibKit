//
//  SetChatBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Sets the background in a specific chat. Supported only in private and secret chats with non-deleted users, and in chats with sufficient boost level and can_change_info administrator right
public struct SetChatBackground: Codable, Equatable, Hashable {

    /// The input background to use; pass null to create a new filled or chat theme background
    public let background: InputBackground?

    /// Chat identifier
    public let chatId: Int64?

    /// Dimming of the background in dark themes, as a percentage; 0-100. Applied only to Wallpaper and Fill types of background
    public let darkThemeDimming: Int?

    /// Pass true to set background only for self; pass false to set background for all chat users. Always false for backgrounds set in boosted chats. Background can be set for both users only by Telegram Premium users and if set background isn't of the type inputBackgroundPrevious
    public let onlyForSelf: Bool?

    /// Background type; pass null to use default background type for the chosen background; backgroundTypeChatTheme isn't supported for private and secret chats. Use chatBoostLevelFeatures.chat_theme_background_count and chatBoostLevelFeatures.can_set_custom_background to check whether the background type can be set in the boosted chat
    public let type: BackgroundType?


    public init(
        background: InputBackground?,
        chatId: Int64?,
        darkThemeDimming: Int?,
        onlyForSelf: Bool?,
        type: BackgroundType?
    ) {
        self.background = background
        self.chatId = chatId
        self.darkThemeDimming = darkThemeDimming
        self.onlyForSelf = onlyForSelf
        self.type = type
    }
}

