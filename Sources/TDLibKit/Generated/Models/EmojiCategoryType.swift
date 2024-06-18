//
//  EmojiCategoryType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.31-8f19c751
//  https://github.com/tdlib/td/tree/8f19c751
//

import Foundation


/// Describes type of emoji category
public indirect enum EmojiCategoryType: Codable, Equatable, Hashable {

    /// The category must be used by default (e.g., for custom emoji or animation search)
    case emojiCategoryTypeDefault

    /// The category must be used by default for regular sticker selection. It may contain greeting emoji category and premium stickers
    case emojiCategoryTypeRegularStickers

    /// The category must be used for emoji status selection
    case emojiCategoryTypeEmojiStatus

    /// The category must be used for chat photo emoji selection
    case emojiCategoryTypeChatPhoto


    private enum Kind: String, Codable {
        case emojiCategoryTypeDefault
        case emojiCategoryTypeRegularStickers
        case emojiCategoryTypeEmojiStatus
        case emojiCategoryTypeChatPhoto
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .emojiCategoryTypeDefault:
            self = .emojiCategoryTypeDefault
        case .emojiCategoryTypeRegularStickers:
            self = .emojiCategoryTypeRegularStickers
        case .emojiCategoryTypeEmojiStatus:
            self = .emojiCategoryTypeEmojiStatus
        case .emojiCategoryTypeChatPhoto:
            self = .emojiCategoryTypeChatPhoto
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .emojiCategoryTypeDefault:
            try container.encode(Kind.emojiCategoryTypeDefault, forKey: .type)
        case .emojiCategoryTypeRegularStickers:
            try container.encode(Kind.emojiCategoryTypeRegularStickers, forKey: .type)
        case .emojiCategoryTypeEmojiStatus:
            try container.encode(Kind.emojiCategoryTypeEmojiStatus, forKey: .type)
        case .emojiCategoryTypeChatPhoto:
            try container.encode(Kind.emojiCategoryTypeChatPhoto, forKey: .type)
        }
    }
}

