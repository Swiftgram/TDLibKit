//
//  SearchInstalledStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Searches for installed sticker sets by looking for specified query in their title and name
public struct SearchInstalledStickerSets: Codable, Equatable {

    /// Pass true to return mask sticker sets; pass false to return ordinary sticker sets
    public let isMasks: Bool?

    /// The maximum number of sticker sets to return
    public let limit: Int?

    /// Query to search for
    public let query: String?


    public init(
        isMasks: Bool?,
        limit: Int?,
        query: String?
    ) {
        self.isMasks = isMasks
        self.limit = limit
        self.query = query
    }
}

