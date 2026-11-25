//
//  SetStickerKeywords.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Changes the list of keywords of a sticker. The sticker must belong to a regular or custom emoji sticker set that is owned by the current user
public struct SetStickerKeywords: Codable, Equatable, Hashable {

    /// List of up to 20 keywords with a total length of up to 64 characters, which can be used to find the sticker
    public let keywords: [String]?

    /// Sticker
    public let sticker: InputFile?


    public init(
        keywords: [String]?,
        sticker: InputFile?
    ) {
        self.keywords = keywords
        self.sticker = sticker
    }
}

