//
//  Sticker.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4e802d67
//  https://github.com/tdlib/td/tree/4e802d67
//

import Foundation


/// Describes a sticker
public struct Sticker: Codable {

    /// Emoji corresponding to the sticker
    public let emoji: String

    /// Sticker height; as defined by the sender
    public let height: Int

    /// True, if the sticker is an animated sticker in TGS format
    public let isAnimated: Bool

    /// True, if the sticker is a mask
    public let isMask: Bool

    /// Position where the mask is placed; may be null
    public let maskPosition: MaskPosition?

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
        height: Int,
        isAnimated: Bool,
        isMask: Bool,
        maskPosition: MaskPosition?,
        outline: [ClosedVectorPath],
        setId: TdInt64,
        sticker: File,
        thumbnail: Thumbnail?,
        width: Int
    ) {
        self.emoji = emoji
        self.height = height
        self.isAnimated = isAnimated
        self.isMask = isMask
        self.maskPosition = maskPosition
        self.outline = outline
        self.setId = setId
        self.sticker = sticker
        self.thumbnail = thumbnail
        self.width = width
    }
}

