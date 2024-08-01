//
//  SearchStickers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.34-a24af099
//  https://github.com/tdlib/td/tree/a24af099
//

import Foundation


/// Searches for stickers from public sticker sets that correspond to any of the given emoji
public struct SearchStickers: Codable, Equatable, Hashable {

    /// Space-separated list of emojis to search for; must be non-empty
    public let emojis: String?

    /// The maximum number of stickers to be returned; 0-100
    public let limit: Int?

    /// Type of the stickers to return
    public let stickerType: StickerType?


    public init(
        emojis: String?,
        limit: Int?,
        stickerType: StickerType?
    ) {
        self.emojis = emojis
        self.limit = limit
        self.stickerType = stickerType
    }
}

