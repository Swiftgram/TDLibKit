//
//  AddRecentSticker.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Manually adds a new sticker to the list of recently used stickers. The new sticker is added to the top of the list. If the sticker was already in the list, it is removed from the list first. Only stickers belonging to a sticker set or in WEBP or WEBM format can be added to this list. Emoji stickers can't be added to recent stickers
public struct AddRecentSticker: Codable, Equatable, Hashable {

    /// Pass true to add the sticker to the list of stickers recently attached to photo or video files; pass false to add the sticker to the list of recently sent stickers
    public let isAttached: Bool?

    /// Sticker file to add
    public let sticker: InputFile?


    public init(
        isAttached: Bool?,
        sticker: InputFile?
    ) {
        self.isAttached = isAttached
        self.sticker = sticker
    }
}

