//
//  InputSticker.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-3d0140b3
//  https://github.com/tdlib/td/tree/3d0140b3
//

import Foundation


/// A sticker to be added to a sticker set
public struct InputSticker: Codable, Equatable {

    /// Emojis corresponding to the sticker
    public let emojis: String

    /// Sticker format
    public let format: StickerFormat

    /// Position where the mask is placed; pass null if not specified
    public let maskPosition: MaskPosition

    /// File with the sticker; must fit in a 512x512 square. For WEBP stickers and masks the file must be in PNG format, which will be converted to WEBP server-side.//-Otherwise, the file must be local or uploaded within a week. See https://core.telegram.org/animated_stickers#technical-requirements for technical requirements
    public let sticker: InputFile


    public init(
        emojis: String,
        format: StickerFormat,
        maskPosition: MaskPosition,
        sticker: InputFile
    ) {
        self.emojis = emojis
        self.format = format
        self.maskPosition = maskPosition
        self.sticker = sticker
    }
}

