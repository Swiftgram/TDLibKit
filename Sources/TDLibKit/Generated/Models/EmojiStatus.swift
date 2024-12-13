//
//  EmojiStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-53acb2b5
//  https://github.com/tdlib/td/tree/53acb2b5
//

import Foundation


/// Describes a custom emoji to be shown instead of the Telegram Premium badge
public struct EmojiStatus: Codable, Equatable, Hashable {

    /// Identifier of the custom emoji in stickerFormatTgs format
    public let customEmojiId: TdInt64

    /// Point in time (Unix timestamp) when the status will expire; 0 if never
    public let expirationDate: Int


    public init(
        customEmojiId: TdInt64,
        expirationDate: Int
    ) {
        self.customEmojiId = customEmojiId
        self.expirationDate = expirationDate
    }
}

