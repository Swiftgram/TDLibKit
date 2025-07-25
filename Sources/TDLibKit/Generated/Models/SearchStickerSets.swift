//
//  SearchStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
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

