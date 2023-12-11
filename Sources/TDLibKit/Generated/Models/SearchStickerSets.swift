//
//  SearchStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-1a50ec47
//  https://github.com/tdlib/td/tree/1a50ec47
//

import Foundation


/// Searches for sticker sets by looking for specified query in their title and name. Excludes installed sticker sets from the results
public struct SearchStickerSets: Codable, Equatable, Hashable {

    /// Query to search for
    public let query: String?

    /// Type of the sticker sets to return
    public let stickerType: StickerType?


    public init(
        query: String?,
        stickerType: StickerType?
    ) {
        self.query = query
        self.stickerType = stickerType
    }
}

