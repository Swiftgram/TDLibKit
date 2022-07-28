//
//  Sticker.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describes a sticker
public struct Sticker: Codable, Equatable {

    /// Emoji corresponding to the sticker
    public let emoji: String

    /// Sticker height; as defined by the sender
    public let height: Int

    /// Sticker's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner
    public let outline: [ClosedVectorPath]

    /// Premium animation of the sticker; may be null. If present, only Premium users can send the sticker
    public let premiumAnimation: File?

    /// The identifier of the sticker set to which the sticker belongs; 0 if none
    public let setId: TdInt64

    /// File containing the sticker
    public let sticker: File

    /// Sticker thumbnail in WEBP or JPEG format; may be null
    public let thumbnail: Thumbnail?

    /// Sticker type
    public let type: StickerType

    /// Sticker width; as defined by the sender
    public let width: Int


    public init(
        emoji: String,
        height: Int,
        outline: [ClosedVectorPath],
        premiumAnimation: File?,
        setId: TdInt64,
        sticker: File,
        thumbnail: Thumbnail?,
        type: StickerType,
        width: Int
    ) {
        self.emoji = emoji
        self.height = height
        self.outline = outline
        self.premiumAnimation = premiumAnimation
        self.setId = setId
        self.sticker = sticker
        self.thumbnail = thumbnail
        self.type = type
        self.width = width
    }
}

