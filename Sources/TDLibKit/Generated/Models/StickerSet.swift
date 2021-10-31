//
//  StickerSet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-f4d20e20
//  https://github.com/tdlib/td/tree/f4d20e20
//

import Foundation


/// Represents a sticker set
public struct StickerSet: Codable {

    /// A list of emoji corresponding to the stickers in the same order. The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the corresponding Sticker object
    public let emojis: [Emojis]

    /// Identifier of the sticker set
    public let id: TdInt64

    /// True, is the stickers in the set are animated
    public let isAnimated: Bool

    /// True, if the sticker set has been archived. A sticker set can't be installed and archived simultaneously
    public let isArchived: Bool

    /// True, if the sticker set has been installed by the current user
    public let isInstalled: Bool

    /// True, if the stickers in the set are masks
    public let isMasks: Bool

    /// True, if the sticker set is official
    public let isOfficial: Bool

    /// True for already viewed trending sticker sets
    public let isViewed: Bool

    /// Name of the sticker set
    public let name: String

    /// List of stickers in this set
    public let stickers: [Sticker]

    /// Sticker set thumbnail in WEBP or TGS format with width and height 100; may be null. The file can be downloaded only before the thumbnail is changed
    public let thumbnail: Thumbnail?

    /// Sticker set thumbnail's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner
    public let thumbnailOutline: [ClosedVectorPath]

    /// Title of the sticker set
    public let title: String


    public init(
        emojis: [Emojis],
        id: TdInt64,
        isAnimated: Bool,
        isArchived: Bool,
        isInstalled: Bool,
        isMasks: Bool,
        isOfficial: Bool,
        isViewed: Bool,
        name: String,
        stickers: [Sticker],
        thumbnail: Thumbnail?,
        thumbnailOutline: [ClosedVectorPath],
        title: String
    ) {
        self.emojis = emojis
        self.id = id
        self.isAnimated = isAnimated
        self.isArchived = isArchived
        self.isInstalled = isInstalled
        self.isMasks = isMasks
        self.isOfficial = isOfficial
        self.isViewed = isViewed
        self.name = name
        self.stickers = stickers
        self.thumbnail = thumbnail
        self.thumbnailOutline = thumbnailOutline
        self.title = title
    }
}

