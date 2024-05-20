//
//  SetStickerSetThumbnail.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Sets a sticker set thumbnail
public struct SetStickerSetThumbnail: Codable, Equatable, Hashable {

    /// Format of the thumbnail; pass null if thumbnail is removed
    public let format: StickerFormat?

    /// Sticker set name. The sticker set must be owned by the current user
    public let name: String?

    /// Thumbnail to set; pass null to remove the sticker set thumbnail
    public let thumbnail: InputFile?

    /// Sticker set owner; ignored for regular users
    public let userId: Int64?


    public init(
        format: StickerFormat?,
        name: String?,
        thumbnail: InputFile?,
        userId: Int64?
    ) {
        self.format = format
        self.name = name
        self.thumbnail = thumbnail
        self.userId = userId
    }
}

