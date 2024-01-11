//
//  ChatAvailableReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.23-94133602
//  https://github.com/tdlib/td/tree/94133602
//

import Foundation


/// Describes reactions available in the chat
public enum ChatAvailableReactions: Codable, Equatable, Hashable {

    /// All reactions are available in the chat
    case chatAvailableReactionsAll

    /// Only specific reactions are available in the chat
    case chatAvailableReactionsSome(ChatAvailableReactionsSome)


    private enum Kind: String, Codable {
        case chatAvailableReactionsAll
        case chatAvailableReactionsSome
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatAvailableReactionsAll:
            self = .chatAvailableReactionsAll
        case .chatAvailableReactionsSome:
            let value = try ChatAvailableReactionsSome(from: decoder)
            self = .chatAvailableReactionsSome(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .chatAvailableReactionsAll:
            try container.encode(Kind.chatAvailableReactionsAll, forKey: .type)
        case .chatAvailableReactionsSome(let value):
            try container.encode(Kind.chatAvailableReactionsSome, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Only specific reactions are available in the chat
public struct ChatAvailableReactionsSome: Codable, Equatable, Hashable {

    /// The list of reactions
    public let reactions: [ReactionType]


    public init(reactions: [ReactionType]) {
        self.reactions = reactions
    }
}

