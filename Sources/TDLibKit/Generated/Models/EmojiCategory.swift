//
//  EmojiCategory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-a08b1f91
//  https://github.com/tdlib/td/tree/a08b1f91
//

import Foundation


/// Contains a list of similar emoji to search for in getStickers and searchStickers
public struct EmojiCategory: Codable, Equatable {

    /// List of emojis in the category
    public let emojis: [String]

    /// Unique identifier of the custom emoji, which represents icon of the category
    public let iconCustomEmojiId: TdInt64

    /// Name of the category
    public let name: String


    public init(
        emojis: [String],
        iconCustomEmojiId: TdInt64,
        name: String
    ) {
        self.emojis = emojis
        self.iconCustomEmojiId = iconCustomEmojiId
        self.name = name
    }
}

