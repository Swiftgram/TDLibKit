//
//  ReactionType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.33-97ded010
//  https://github.com/tdlib/td/tree/97ded010
//

import Foundation


/// Describes type of message reaction
public indirect enum ReactionType: Codable, Equatable, Hashable {

    /// A reaction with an emoji
    case reactionTypeEmoji(ReactionTypeEmoji)

    /// A reaction with a custom emoji
    case reactionTypeCustomEmoji(ReactionTypeCustomEmoji)


    private enum Kind: String, Codable {
        case reactionTypeEmoji
        case reactionTypeCustomEmoji
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .reactionTypeEmoji:
            let value = try ReactionTypeEmoji(from: decoder)
            self = .reactionTypeEmoji(value)
        case .reactionTypeCustomEmoji:
            let value = try ReactionTypeCustomEmoji(from: decoder)
            self = .reactionTypeCustomEmoji(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .reactionTypeEmoji(let value):
            try container.encode(Kind.reactionTypeEmoji, forKey: .type)
            try value.encode(to: encoder)
        case .reactionTypeCustomEmoji(let value):
            try container.encode(Kind.reactionTypeCustomEmoji, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A reaction with an emoji
public struct ReactionTypeEmoji: Codable, Equatable, Hashable {

    /// Text representation of the reaction
    public let emoji: String


    public init(emoji: String) {
        self.emoji = emoji
    }
}

/// A reaction with a custom emoji
public struct ReactionTypeCustomEmoji: Codable, Equatable, Hashable {

    /// Unique identifier of the custom emoji
    public let customEmojiId: TdInt64


    public init(customEmojiId: TdInt64) {
        self.customEmojiId = customEmojiId
    }
}

