//
//  SetChatBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-8951949e
//  https://github.com/tdlib/td/tree/8951949e
//

import Foundation


/// Sets the background in a specific chat. Supported only in private and secret chats with non-deleted users
public struct SetChatBackground: Codable, Equatable, Hashable {

    /// The input background to use; pass null to create a new filled background
    public let background: InputBackground?

    /// Chat identifier
    public let chatId: Int64?

    /// Dimming of the background in dark themes, as a percentage; 0-100
    public let darkThemeDimming: Int?

    /// Pass true to set background only for self; pass false to set background for both chat users. Background can be set for both users only by Telegram Premium users and if set background isn't of the type inputBackgroundPrevious
    public let onlyForSelf: Bool?

    /// Background type; pass null to use default background type for the chosen background
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

