//
//  CreateNewStickerSet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.25-fe620155
//  https://github.com/tdlib/td/tree/fe620155
//

import Foundation


/// Creates a new sticker set. Returns the newly created sticker set
public struct CreateNewStickerSet: Codable, Equatable, Hashable {

    /// Sticker set name. Can contain only English letters, digits and underscores. Must end with *"_by_<bot username>"* (*<bot_username>* is case insensitive) for bots; 1-64 characters
    public let name: String?

    /// Pass true if stickers in the sticker set must be repainted; for custom emoji sticker sets only
    public let needsRepainting: Bool?

    /// Source of the sticker set; may be empty if unknown
    public let source: String?

    /// Format of the stickers in the set
    public let stickerFormat: StickerFormat?

    /// Type of the stickers in the set
    public let stickerType: StickerType?

    /// List of stickers to be added to the set; must be non-empty. All stickers must have the same format. For TGS stickers, uploadStickerFile must be used before the sticker is shown
    public let stickers: [InputSticker]?

    /// Sticker set title; 1-64 characters
    public let title: String?

    /// Sticker set owner; ignored for regular users
    public let userId: Int64?


    public init(
        name: String?,
        needsRepainting: Bool?,
        source: String?,
        stickerFormat: StickerFormat?,
        stickerType: StickerType?,
        stickers: [InputSticker]?,
        title: String?,
        userId: Int64?
    ) {
        self.name = name
        self.needsRepainting = needsRepainting
        self.source = source
        self.stickerFormat = stickerFormat
        self.stickerType = stickerType
        self.stickers = stickers
        self.title = title
        self.userId = userId
    }
}

