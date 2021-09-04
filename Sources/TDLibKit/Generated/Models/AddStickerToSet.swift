//
//  AddStickerToSet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Adds a new sticker to a set; for bots only. Returns the sticker set
public struct AddStickerToSet: Codable {

    /// Sticker set name
    public let name: String

    /// Sticker to add to the set
    public let sticker: InputSticker

    /// Sticker set owner
    public let userId: Int


    public init(
        name: String,
        sticker: InputSticker,
        userId: Int
    ) {
        self.name = name
        self.sticker = sticker
        self.userId = userId
    }
}
