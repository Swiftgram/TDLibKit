//
//  DeleteStickerSet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-677219a2
//  https://github.com/tdlib/td/tree/677219a2
//

import Foundation


/// Deleted a sticker set; for bots only
public struct DeleteStickerSet: Codable, Equatable {

    /// Sticker set name
    public let name: String?


    public init(name: String?) {
        self.name = name
    }
}

