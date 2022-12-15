//
//  SearchStickers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.9-e531ae2e
//  https://github.com/tdlib/td/tree/e531ae2e
//

import Foundation


/// Searches for stickers from public sticker sets that correspond to a given emoji
public struct SearchStickers: Codable, Equatable {

    /// String representation of emoji; must be non-empty
    public let emoji: String?

    /// The maximum number of stickers to be returned; 0-100
    public let limit: Int?


    public init(
        emoji: String?,
        limit: Int?
    ) {
        self.emoji = emoji
        self.limit = limit
    }
}

