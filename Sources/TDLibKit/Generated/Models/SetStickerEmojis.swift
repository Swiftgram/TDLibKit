//
//  SetStickerEmojis.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-53888437
//  https://github.com/tdlib/td/tree/53888437
//

import Foundation


/// Changes the list of emoji corresponding to a sticker; for bots only. The sticker must belong to a regular or custom emoji sticker set created by the bot
public struct SetStickerEmojis: Codable, Equatable, Hashable {

    /// New string with 1-20 emoji corresponding to the sticker
    public let emojis: String?

    /// Sticker
    public let sticker: InputFile?


    public init(
        emojis: String?,
        sticker: InputFile?
    ) {
        self.emojis = emojis
        self.sticker = sticker
    }
}

