//
//  SearchInstalledStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-b498497b
//  https://github.com/tdlib/td/tree/b498497b
//

import Foundation


/// Searches for installed sticker sets by looking for specified query in their title and name
public struct SearchInstalledStickerSets: Codable, Equatable, Hashable {

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

