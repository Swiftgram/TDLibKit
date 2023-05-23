//
//  EmojiCategory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-3d4b4ac0
//  https://github.com/tdlib/td/tree/3d4b4ac0
//

import Foundation


/// Contains a list of similar emoji to search for in getStickers and searchStickers
public struct EmojiCategory: Codable, Equatable {

    /// List of emojis in the category
    public let emojis: [String]

    /// Custom emoji sticker, which represents icon of the category
    public let icon: Sticker

    /// Name of the category
    public let name: String


    public init(
        emojis: [String],
        icon: Sticker,
        name: String
    ) {
        self.emojis = emojis
        self.icon = icon
        self.name = name
    }
}

