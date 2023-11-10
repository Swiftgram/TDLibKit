//
//  EmojiCategoryType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-6ee64289
//  https://github.com/tdlib/td/tree/6ee64289
//

import Foundation


/// Describes type of an emoji category
public enum EmojiCategoryType: Codable, Equatable, Hashable {

    /// The category must be used by default
    case emojiCategoryTypeDefault

    /// The category must be used for emoji status selection
    case emojiCategoryTypeEmojiStatus

    /// The category must be used for chat photo emoji selection
    case emojiCategoryTypeChatPhoto


    private enum Kind: String, Codable {
        case emojiCategoryTypeDefault
        case emojiCategoryTypeEmojiStatus
        case emojiCategoryTypeChatPhoto
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .emojiCategoryTypeDefault:
            self = .emojiCategoryTypeDefault
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
        case .emojiCategoryTypeEmojiStatus:
            try container.encode(Kind.emojiCategoryTypeEmojiStatus, forKey: .type)
        case .emojiCategoryTypeChatPhoto:
            try container.encode(Kind.emojiCategoryTypeChatPhoto, forKey: .type)
        }
    }
}

