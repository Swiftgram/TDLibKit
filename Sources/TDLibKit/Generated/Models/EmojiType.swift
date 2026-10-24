//
//  EmojiType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-0e88653d
//  https://github.com/tdlib/td/tree/0e88653d
//

import Foundation


/// Describes an emoji
public indirect enum EmojiType: Codable, Equatable, Hashable {

    /// A regular emoji
    case emojiTypeRegular(EmojiTypeRegular)

    /// A custom emoji
    case emojiTypeCustomEmoji(EmojiTypeCustomEmoji)


    private enum Kind: String, Codable {
        case emojiTypeRegular
        case emojiTypeCustomEmoji
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .emojiTypeRegular:
            let value = try EmojiTypeRegular(from: decoder)
            self = .emojiTypeRegular(value)
        case .emojiTypeCustomEmoji:
            let value = try EmojiTypeCustomEmoji(from: decoder)
            self = .emojiTypeCustomEmoji(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .emojiTypeRegular(let value):
            try container.encode(Kind.emojiTypeRegular, forKey: .type)
            try value.encode(to: encoder)
        case .emojiTypeCustomEmoji(let value):
            try container.encode(Kind.emojiTypeCustomEmoji, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A regular emoji
public struct EmojiTypeRegular: Codable, Equatable, Hashable {

    /// Text representation of the emoji
    public let emoji: String


    public init(emoji: String) {
        self.emoji = emoji
    }
}

/// A custom emoji
public struct EmojiTypeCustomEmoji: Codable, Equatable, Hashable {

    /// Identifier of the custom emoji
    public let customEmojiId: TdInt64


    public init(customEmojiId: TdInt64) {
        self.customEmojiId = customEmojiId
    }
}

