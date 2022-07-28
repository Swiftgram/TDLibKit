//
//  SetStickerSetThumbnail.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Sets a sticker set thumbnail; for bots only. Returns the sticker set
public struct SetStickerSetThumbnail: Codable, Equatable {

    /// Sticker set name
    public let name: String?

    /// Thumbnail to set in PNG, TGS, or WEBM format; pass null to remove the sticker set thumbnail. Thumbnail format must match the format of stickers in the set
    public let thumbnail: InputFile?

    /// Sticker set owner
    public let userId: Int64?


    public init(
        name: String?,
        thumbnail: InputFile?,
        userId: Int64?
    ) {
        self.name = name
        self.thumbnail = thumbnail
        self.userId = userId
    }
}

