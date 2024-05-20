//
//  SetProfileAccentColor.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Changes accent color and background custom emoji for profile of the current user; for Telegram Premium users only
public struct SetProfileAccentColor: Codable, Equatable, Hashable {

    /// Identifier of the accent color to use for profile; pass -1 if none
    public let profileAccentColorId: Int?

    /// Identifier of a custom emoji to be shown on the user's profile photo background; 0 if none
    public let profileBackgroundCustomEmojiId: TdInt64?


    public init(
        profileAccentColorId: Int?,
        profileBackgroundCustomEmojiId: TdInt64?
    ) {
        self.profileAccentColorId = profileAccentColorId
        self.profileBackgroundCustomEmojiId = profileBackgroundCustomEmojiId
    }
}

