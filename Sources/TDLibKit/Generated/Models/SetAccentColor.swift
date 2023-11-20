//
//  SetAccentColor.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-ec788c75
//  https://github.com/tdlib/td/tree/ec788c75
//

import Foundation


/// Changes accent color and background custom emoji for the current user; for Telegram Premium users only
public struct SetAccentColor: Codable, Equatable, Hashable {

    /// Identifier of the accent color to use
    public let accentColorId: Int?

    /// Identifier of a custom emoji to be shown on the reply header background; 0 if none
    public let backgroundCustomEmojiId: TdInt64?


    public init(
        accentColorId: Int?,
        backgroundCustomEmojiId: TdInt64?
    ) {
        self.accentColorId = accentColorId
        self.backgroundCustomEmojiId = backgroundCustomEmojiId
    }
}

