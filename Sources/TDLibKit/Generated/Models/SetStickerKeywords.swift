//
//  SetStickerKeywords.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-8893dc80
//  https://github.com/tdlib/td/tree/8893dc80
//

import Foundation


/// Changes the list of keywords of a sticker; for bots only. The sticker must belong to a regular or custom emoji sticker set created by the bot
public struct SetStickerKeywords: Codable, Equatable, Hashable {

    /// List of up to 20 keywords with total length up to 64 characters, which can be used to find the sticker
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

