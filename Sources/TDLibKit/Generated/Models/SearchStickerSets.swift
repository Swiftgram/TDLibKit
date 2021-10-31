//
//  SearchStickerSets.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-f4d20e20
//  https://github.com/tdlib/td/tree/f4d20e20
//

import Foundation


/// Searches for ordinary sticker sets by looking for specified query in their title and name. Excludes installed sticker sets from the results
public struct SearchStickerSets: Codable {

    /// Query to search for
    public let query: String?


    public init(query: String?) {
        self.query = query
    }
}

