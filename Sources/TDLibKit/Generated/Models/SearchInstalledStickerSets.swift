//
//  SearchInstalledStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-58c4a12c
//  https://github.com/tdlib/td/tree/58c4a12c
//

import Foundation


/// Searches for installed sticker sets by looking for specified query in their title and name
public struct SearchInstalledStickerSets: Codable, Equatable {

    /// The maximum number of sticker sets to return
    public let limit: Int?

    /// Query to search for
    public let query: String?

    /// Type of the sticker sets to search for
    public let stickerType: StickerType?


    public init(
        limit: Int?,
        query: String?,
        stickerType: StickerType?
    ) {
        self.limit = limit
        self.query = query
        self.stickerType = stickerType
    }
}

