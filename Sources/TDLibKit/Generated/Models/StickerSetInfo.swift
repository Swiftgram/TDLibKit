//
//  StickerSetInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-3abac232
//  https://github.com/tdlib/td/tree/3abac232
//

import Foundation


/// Represents short information about a sticker set
public struct StickerSetInfo: Codable {

    /// Contains up to the first 5 stickers from the set, depending on the context. If the application needs more stickers the full sticker set needs to be requested
    public let covers: [Sticker]

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

    /// Total number of stickers in the set
    public let size: Int

    /// Sticker set thumbnail in WEBP or TGS format with width and height 100; may be null
    public let thumbnail: Thumbnail?

    /// Sticker set thumbnail's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner
    public let thumbnailOutline: [ClosedVectorPath]

    /// Title of the sticker set
    public let title: String


    public init(
        covers: [Sticker],
        id: TdInt64,
        isAnimated: Bool,
        isArchived: Bool,
        isInstalled: Bool,
        isMasks: Bool,
        isOfficial: Bool,
        isViewed: Bool,
        name: String,
        size: Int,
        thumbnail: Thumbnail?,
        thumbnailOutline: [ClosedVectorPath],
        title: String
    ) {
        self.covers = covers
        self.id = id
        self.isAnimated = isAnimated
        self.isArchived = isArchived
        self.isInstalled = isInstalled
        self.isMasks = isMasks
        self.isOfficial = isOfficial
        self.isViewed = isViewed
        self.name = name
        self.size = size
        self.thumbnail = thumbnail
        self.thumbnailOutline = thumbnailOutline
        self.title = title
    }
}

