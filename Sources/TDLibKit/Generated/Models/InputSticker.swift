//
//  InputSticker.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-7334b262
//  https://github.com/tdlib/td/tree/7334b262
//

import Foundation


/// Describes a sticker that needs to be added to a sticker set
public enum InputSticker: Codable, Equatable {

    /// A static sticker in PNG format, which will be converted to WEBP server-side
    case inputStickerStatic(InputStickerStatic)

    /// An animated sticker in TGS format
    case inputStickerAnimated(InputStickerAnimated)


    private enum Kind: String, Codable {
        case inputStickerStatic
        case inputStickerAnimated
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inputStickerStatic:
            let value = try InputStickerStatic(from: decoder)
            self = .inputStickerStatic(value)
        case .inputStickerAnimated:
            let value = try InputStickerAnimated(from: decoder)
            self = .inputStickerAnimated(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .inputStickerStatic(let value):
            try container.encode(Kind.inputStickerStatic, forKey: .type)
            try value.encode(to: encoder)
        case .inputStickerAnimated(let value):
            try container.encode(Kind.inputStickerAnimated, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A static sticker in PNG format, which will be converted to WEBP server-side
public struct InputStickerStatic: Codable, Equatable {

    /// Emojis corresponding to the sticker
    public let emojis: String

    /// For masks, position where the mask is placed; pass null if unspecified
    public let maskPosition: MaskPosition

    /// PNG image with the sticker; must be up to 512 KB in size and fit in a 512x512 square
    public let sticker: InputFile


    public init(
        emojis: String,
        maskPosition: MaskPosition,
        sticker: InputFile
    ) {
        self.emojis = emojis
        self.maskPosition = maskPosition
        self.sticker = sticker
    }
}

/// An animated sticker in TGS format
public struct InputStickerAnimated: Codable, Equatable {

    /// Emojis corresponding to the sticker
    public let emojis: String

    /// File with the animated sticker. Only local or uploaded within a week files are supported. See https://core.telegram.org/animated_stickers#technical-requirements for technical requirements
    public let sticker: InputFile


    public init(
        emojis: String,
        sticker: InputFile
    ) {
        self.emojis = emojis
        self.sticker = sticker
    }
}

