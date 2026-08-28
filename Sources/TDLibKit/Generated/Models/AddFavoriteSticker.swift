//
//  AddFavoriteSticker.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Adds a new sticker to the list of favorite stickers. The new sticker is added to the top of the list. If the sticker was already in the list, it is removed from the list first. Only stickers belonging to a sticker set or in WEBP or WEBM format can be added to this list. Emoji stickers can't be added to favorite stickers
public struct AddFavoriteSticker: Codable, Equatable, Hashable {

    /// Sticker file to add
    public let sticker: InputFile?


    public init(sticker: InputFile?) {
        self.sticker = sticker
    }
}

