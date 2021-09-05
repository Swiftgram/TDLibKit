//
//  SetStickerSetThumbnail.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
//

import Foundation


/// Sets a sticker set thumbnail; for bots only. Returns the sticker set
public struct SetStickerSetThumbnail: Codable {

    /// Sticker set name
    public let name: String

    /// Thumbnail to set in PNG or TGS format. Animated thumbnail must be set for animated sticker sets and only for them. Pass a zero InputFileId to delete the thumbnail
    public let thumbnail: InputFile

    /// Sticker set owner
    public let userId: Int


    public init(
        name: String,
        thumbnail: InputFile,
        userId: Int
    ) {
        self.name = name
        self.thumbnail = thumbnail
        self.userId = userId
    }
}

