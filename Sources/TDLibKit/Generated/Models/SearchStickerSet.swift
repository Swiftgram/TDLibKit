//
//  SearchStickerSet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.26-586bc784
//  https://github.com/tdlib/td/tree/586bc784
//

import Foundation


/// Searches for a sticker set by its name
public struct SearchStickerSet: Codable, Equatable, Hashable {

    /// Name of the sticker set
    public let name: String?


    public init(name: String?) {
        self.name = name
    }
}

