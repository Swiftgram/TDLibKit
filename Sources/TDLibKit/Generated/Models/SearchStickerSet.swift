//
//  SearchStickerSet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-e65c0827
//  https://github.com/tdlib/td/tree/e65c0827
//

import Foundation


/// Searches for a sticker set by its name
public struct SearchStickerSet: Codable, Equatable {

    /// Name of the sticker set
    public let name: String?


    public init(name: String?) {
        self.name = name
    }
}

