//
//  InputSticker.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// A sticker to be added to a sticker set
public struct InputSticker: Codable, Equatable {

    /// Emojis corresponding to the sticker
    public let emojis: String

    /// File with the sticker; must fit in a 512x512 square. For WEBP stickers and masks the file must be in PNG format, which will be converted to WEBP server-side. Otherwise, the file must be local or uploaded within a week. See https://core.telegram.org/animated_stickers#technical-requirements for technical requirements
    public let sticker: InputFile

    /// Sticker type
    public let type: StickerType


    public init(
        emojis: String,
        sticker: InputFile,
        type: StickerType
    ) {
        self.emojis = emojis
        self.sticker = sticker
        self.type = type
    }
}

