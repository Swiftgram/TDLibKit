//
//  SearchStickers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-42b1b825
//  https://github.com/tdlib/td/tree/42b1b825
//

import Foundation


/// Searches for stickers from public sticker sets that correspond to any of the given emoji
public struct SearchStickers: Codable, Equatable, Hashable {

    /// Space-separated list of emojis to search for
    public let emojis: String?

    /// List of possible IETF language tags of the user's input language; may be empty if unknown
    public let inputLanguageCodes: [String]?

    /// The maximum number of stickers to be returned; 0-100
    public let limit: Int?

    /// The offset from which to return the stickers; must be non-negative
    public let offset: Int?

    /// Query to search for; may be empty to search for emoji only
    public let query: String?

    /// Type of the stickers to return
    public let stickerType: StickerType?


    public init(
        emojis: String?,
        inputLanguageCodes: [String]?,
        limit: Int?,
        offset: Int?,
        query: String?,
        stickerType: StickerType?
    ) {
        self.emojis = emojis
        self.inputLanguageCodes = inputLanguageCodes
        self.limit = limit
        self.offset = offset
        self.query = query
        self.stickerType = stickerType
    }
}

