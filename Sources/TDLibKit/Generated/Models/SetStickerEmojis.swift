//
//  SetStickerEmojis.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-90c36b60
//  https://github.com/tdlib/td/tree/90c36b60
//

import Foundation


/// Changes the list of emoji corresponding to a sticker; for bots only. The sticker must belong to a regular or custom emoji sticker set created by the bot
public struct SetStickerEmojis: Codable, Equatable {

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

