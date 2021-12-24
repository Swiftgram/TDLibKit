//
//  SetStickerSetThumbnail.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.11-d4f5e672
//  https://github.com/tdlib/td/tree/d4f5e672
//

import Foundation


/// Sets a sticker set thumbnail; for bots only. Returns the sticker set
public struct SetStickerSetThumbnail: Codable, Equatable {

    /// Sticker set name
    public let name: String?

    /// Thumbnail to set in PNG or TGS format; pass null to remove the sticker set thumbnail. Animated thumbnail must be set for animated sticker sets and only for them
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

