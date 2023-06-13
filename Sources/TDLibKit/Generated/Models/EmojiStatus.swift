//
//  EmojiStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-66234ae2
//  https://github.com/tdlib/td/tree/66234ae2
//

import Foundation


/// Describes a custom emoji to be shown instead of the Telegram Premium badge
public struct EmojiStatus: Codable, Equatable, Hashable {

    /// Identifier of the custom emoji in stickerFormatTgs format
    public let customEmojiId: TdInt64


    public init(customEmojiId: TdInt64) {
        self.customEmojiId = customEmojiId
    }
}

