//
//  SearchStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
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

