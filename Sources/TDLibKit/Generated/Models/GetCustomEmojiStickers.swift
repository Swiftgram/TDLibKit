//
//  GetCustomEmojiStickers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.40-22d49d5b
//  https://github.com/tdlib/td/tree/22d49d5b
//

import Foundation


/// Returns the list of custom emoji stickers by their identifiers. Stickers are returned in arbitrary order. Only found stickers are returned
public struct GetCustomEmojiStickers: Codable, Equatable, Hashable {

    /// Identifiers of custom emoji stickers. At most 200 custom emoji stickers can be received simultaneously
    public let customEmojiIds: [TdInt64]?


    public init(customEmojiIds: [TdInt64]?) {
        self.customEmojiIds = customEmojiIds
    }
}

