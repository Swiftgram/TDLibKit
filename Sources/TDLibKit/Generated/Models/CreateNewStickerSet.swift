//
//  CreateNewStickerSet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-5dc5b473
//  https://github.com/tdlib/td/tree/5dc5b473
//

import Foundation


/// Creates a new sticker set. Returns the newly created sticker set
public struct CreateNewStickerSet: Codable, Equatable {

    /// True, if stickers are masks. Animated stickers can't be masks
    public let isMasks: Bool?

    /// Sticker set name. Can contain only English letters, digits and underscores. Must end with *"_by_<bot username>"* (*<bot_username>* is case insensitive) for bots; 1-64 characters
    public let name: String?

    /// Source of the sticker set; may be empty if unknown
    public let source: String?

    /// List of stickers to be added to the set; must be non-empty. All stickers must be of the same type. For animated stickers, uploadStickerFile must be used before the sticker is shown
    public let stickers: [InputSticker]?

    /// Sticker set title; 1-64 characters
    public let title: String?

    /// Sticker set owner; ignored for regular users
    public let userId: Int64?


    public init(
        isMasks: Bool?,
        name: String?,
        source: String?,
        stickers: [InputSticker]?,
        title: String?,
        userId: Int64?
    ) {
        self.isMasks = isMasks
        self.name = name
        self.source = source
        self.stickers = stickers
        self.title = title
        self.userId = userId
    }
}

