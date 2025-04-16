//
//  SearchStickerSet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-f1b75003
//  https://github.com/tdlib/td/tree/f1b75003
//

import Foundation


/// Searches for a sticker set by its name
public struct SearchStickerSet: Codable, Equatable, Hashable {

    /// Pass true to ignore local cache of sticker sets and always send a network request
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

