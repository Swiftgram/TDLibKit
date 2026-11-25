//
//  AddStickerToSet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Adds a new sticker to a set
public struct AddStickerToSet: Codable, Equatable, Hashable {

    /// Sticker set name. The sticker set must be owned by the current user, and contain fewer than 200 stickers for custom emoji sticker sets and fewer than 120 otherwise
    public let name: String?

    /// Sticker to add to the set
    public let sticker: NewSticker?

    /// Sticker set owner; ignored for regular users
    public let userId: Int64?


    public init(
        name: String?,
        sticker: NewSticker?,
        userId: Int64?
    ) {
        self.name = name
        self.sticker = sticker
        self.userId = userId
    }
}

