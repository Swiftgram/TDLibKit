//
//  GetCustomEmojiStickers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-64264b0f
//  https://github.com/tdlib/td/tree/64264b0f
//

import Foundation


/// Returns list of custom emoji stickers by their identifiers. Stickers are returned in arbitrary order. Only found stickers are returned
public struct GetCustomEmojiStickers: Codable, Equatable, Hashable {

    /// Identifiers of custom emoji stickers. At most 200 custom emoji stickers can be received simultaneously
    public let customEmojiIds: [TdInt64]?


    public init(customEmojiIds: [TdInt64]?) {
        self.customEmojiIds = customEmojiIds
    }
}

