//
//  Sticker.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.9-29752073
//  https://github.com/tdlib/td/tree/29752073
//

import Foundation


/// Describes a sticker
public struct Sticker: Codable, Equatable {

    /// Identifier of the emoji if the sticker is a custom emoji
    public let customEmojiId: TdInt64

    /// Emoji corresponding to the sticker
    public let emoji: String

    /// Sticker format
    public let format: StickerFormat

    /// Sticker height; as defined by the sender
    public let height: Int

    /// True, if only Premium users can use the sticker
    public let isPremium: Bool

    /// Position where the mask is placed; may be null even the sticker is a mask
    public let maskPosition: MaskPosition?

    /// Sticker's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner
    public let outline: [ClosedVectorPath]

    /// Premium animation of the sticker; may be null
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
        customEmojiId: TdInt64,
        emoji: String,
        format: StickerFormat,
        height: Int,
        isPremium: Bool,
        maskPosition: MaskPosition?,
        outline: [ClosedVectorPath],
        premiumAnimation: File?,
        setId: TdInt64,
        sticker: File,
        thumbnail: Thumbnail?,
        type: StickerType,
        width: Int
    ) {
        self.customEmojiId = customEmojiId
        self.emoji = emoji
        self.format = format
        self.height = height
        self.isPremium = isPremium
        self.maskPosition = maskPosition
        self.outline = outline
        self.premiumAnimation = premiumAnimation
        self.setId = setId
        self.sticker = sticker
        self.thumbnail = thumbnail
        self.type = type
        self.width = width
    }
}

