//
//  EmojiStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-5ed1d22d
//  https://github.com/tdlib/td/tree/5ed1d22d
//

import Foundation


/// Describes a custom emoji to be shown instead of the Telegram Premium badge
public struct EmojiStatus: Codable, Equatable {

    /// Identifier of the custom emoji in stickerFormatTgs format
    public let customEmojiId: TdInt64


    public init(customEmojiId: TdInt64) {
        self.customEmojiId = customEmojiId
    }
}

