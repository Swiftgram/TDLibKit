//
//  EmojiStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
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

