//
//  Sticker.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-bc7734a2
//  https://github.com/tdlib/td/tree/bc7734a2
//

import Foundation


/// Describes a sticker
public struct Sticker: Codable, Equatable {

    /// Emoji corresponding to the sticker
    public let emoji: String

    /// Sticker format
    public let format: StickerFormat

    /// Sticker's full type
    public let fullType: StickerFullType

    /// Sticker height; as defined by the sender
    public let height: Int

    /// Sticker's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner
    public let outline: [ClosedVectorPath]

    /// The identifier of the sticker set to which the sticker belongs; 0 if none
    public let setId: TdInt64

    /// File containing the sticker
    public let sticker: File

    /// Sticker thumbnail in WEBP or JPEG format; may be null
    public let thumbnail: Thumbnail?

    /// Sticker width; as defined by the sender
    public let width: Int


    public init(
        emoji: String,
        format: StickerFormat,
        fullType: StickerFullType,
        height: Int,
        outline: [ClosedVectorPath],
        setId: TdInt64,
        sticker: File,
        thumbnail: Thumbnail?,
        width: Int
    ) {
        self.emoji = emoji
        self.format = format
        self.fullType = fullType
        self.height = height
        self.outline = outline
        self.setId = setId
        self.sticker = sticker
        self.thumbnail = thumbnail
        self.width = width
    }
}

