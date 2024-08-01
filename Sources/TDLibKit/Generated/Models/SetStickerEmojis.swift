//
//  SetStickerEmojis.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.34-a24af099
//  https://github.com/tdlib/td/tree/a24af099
//

import Foundation


/// Changes the list of emojis corresponding to a sticker. The sticker must belong to a regular or custom emoji sticker set that is owned by the current user
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

