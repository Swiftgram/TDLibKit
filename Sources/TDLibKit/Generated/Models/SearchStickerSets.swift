//
//  SearchStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
//

import Foundation


/// Searches for ordinary sticker sets by looking for specified query in their title and name. Excludes installed sticker sets from the results
public struct SearchStickerSets: Codable, Equatable {

    /// Query to search for
    public let query: String?


    public init(query: String?) {
        self.query = query
    }
}

