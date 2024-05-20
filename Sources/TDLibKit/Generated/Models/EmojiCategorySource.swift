//
//  EmojiCategorySource.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes source of stickers for an emoji category
public indirect enum EmojiCategorySource: Codable, Equatable, Hashable {

    /// The category contains a list of similar emoji to search for in getStickers and searchStickers for stickers, or getInlineQueryResults with the bot getOption("animation_search_bot_username") for animations
    case emojiCategorySourceSearch(EmojiCategorySourceSearch)

    /// The category contains Premium stickers that must be found by getPremiumStickers
    case emojiCategorySourcePremium


    private enum Kind: String, Codable {
        case emojiCategorySourceSearch
        case emojiCategorySourcePremium
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .emojiCategorySourceSearch:
            let value = try EmojiCategorySourceSearch(from: decoder)
            self = .emojiCategorySourceSearch(value)
        case .emojiCategorySourcePremium:
            self = .emojiCategorySourcePremium
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .emojiCategorySourceSearch(let value):
            try container.encode(Kind.emojiCategorySourceSearch, forKey: .type)
            try value.encode(to: encoder)
        case .emojiCategorySourcePremium:
            try container.encode(Kind.emojiCategorySourcePremium, forKey: .type)
        }
    }
}

/// The category contains a list of similar emoji to search for in getStickers and searchStickers for stickers, or getInlineQueryResults with the bot getOption("animation_search_bot_username") for animations
public struct EmojiCategorySourceSearch: Codable, Equatable, Hashable {

    /// List of emojis for search for
    public let emojis: [String]


    public init(emojis: [String]) {
        self.emojis = emojis
    }
}

