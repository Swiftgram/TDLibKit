//
//  SearchStickerSet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-0208b705
//  https://github.com/tdlib/td/tree/0208b705
//

import Foundation


/// Searches for a sticker set by its name
public struct SearchStickerSet: Codable {

    /// Name of the sticker set
    public let name: String?


    public init(name: String?) {
        self.name = name
    }
}

