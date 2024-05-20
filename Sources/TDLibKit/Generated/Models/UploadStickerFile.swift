//
//  UploadStickerFile.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Uploads a file with a sticker; returns the uploaded file
public struct UploadStickerFile: Codable, Equatable, Hashable {

    /// File file to upload; must fit in a 512x512 square. For WEBP stickers the file must be in WEBP or PNG format, which will be converted to WEBP server-side. See https://core.telegram.org/animated_stickers#technical-requirements for technical requirements
    public let sticker: InputFile?

    /// Sticker format
    public let stickerFormat: StickerFormat?

    /// Sticker file owner; ignored for regular users
    public let userId: Int64?


    public init(
        sticker: InputFile?,
        stickerFormat: StickerFormat?,
        userId: Int64?
    ) {
        self.sticker = sticker
        self.stickerFormat = stickerFormat
        self.userId = userId
    }
}

