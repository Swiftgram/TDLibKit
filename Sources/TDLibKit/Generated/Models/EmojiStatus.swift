//
//  EmojiStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.8-3ec53c8d
//  https://github.com/tdlib/td/tree/3ec53c8d
//

import Foundation


/// Describes a custom emoji to be shown instead of the Telegram Premium badge
public struct EmojiStatus: Codable, Equatable {

    /// Identifier of the custom emoji in stickerFormatTgs format. If the custom emoji belongs to the sticker set GetOption("themed_emoji_statuses_sticker_set_id"), then it's color must be changed to the color of the Telegram Premium badge
    public let customEmojiId: TdInt64


    public init(customEmojiId: TdInt64) {
        self.customEmojiId = customEmojiId
    }
}

