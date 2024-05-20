//
//  InputSticker.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// A sticker to be added to a sticker set
public struct InputSticker: Codable, Equatable, Hashable {

    /// String with 1-20 emoji corresponding to the sticker
    public let emojis: String

    /// Format of the sticker
    public let format: StickerFormat

    /// List of up to 20 keywords with total length up to 64 characters, which can be used to find the sticker
    public let keywords: [String]

    /// Position where the mask is placed; pass null if not specified
    public let maskPosition: MaskPosition?

    /// File with the sticker; must fit in a 512x512 square. For WEBP stickers the file must be in WEBP or PNG format, which will be converted to WEBP server-side. See https://core.telegram.org/animated_stickers#technical-requirements for technical requirements
    public let sticker: InputFile


    public init(
        emojis: String,
        format: StickerFormat,
        keywords: [String],
        maskPosition: MaskPosition?,
        sticker: InputFile
    ) {
        self.emojis = emojis
        self.format = format
        self.keywords = keywords
        self.maskPosition = maskPosition
        self.sticker = sticker
    }
}

