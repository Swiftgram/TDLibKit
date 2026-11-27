//
//  SearchStickerSet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Searches for a sticker set by its name
public struct SearchStickerSet: Codable, Equatable, Hashable {

    /// Pass true to ignore the local cache of sticker sets and always send a network request
    public let ignoreCache: Bool?

    /// Name of the sticker set
    public let name: String?


    public init(
        ignoreCache: Bool?,
        name: String?
    ) {
        self.ignoreCache = ignoreCache
        self.name = name
    }
}

