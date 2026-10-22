//
//  EmojiType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-7601cdfb
//  https://github.com/tdlib/td/tree/7601cdfb
//

import Foundation


/// Describes an emoji
public indirect enum EmojiType: Codable, Equatable, Hashable {

    /// A regular emoji
    case emojiTypeRegular(EmojiTypeRegular)

    /// A custom emoji
    case emojiTypeCustom(EmojiTypeCustom)


    private enum Kind: String, Codable {
        case emojiTypeRegular
        case emojiTypeCustom
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .emojiTypeRegular:
            let value = try EmojiTypeRegular(from: decoder)
            self = .emojiTypeRegular(value)
        case .emojiTypeCustom:
            let value = try EmojiTypeCustom(from: decoder)
            self = .emojiTypeCustom(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .emojiTypeRegular(let value):
            try container.encode(Kind.emojiTypeRegular, forKey: .type)
            try value.encode(to: encoder)
        case .emojiTypeCustom(let value):
            try container.encode(Kind.emojiTypeCustom, forKey: .type)
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
public struct EmojiTypeCustom: Codable, Equatable, Hashable {

    /// Identifier of the custom emoji
    public let customEmojiId: TdInt64


    public init(customEmojiId: TdInt64) {
        self.customEmojiId = customEmojiId
    }
}

