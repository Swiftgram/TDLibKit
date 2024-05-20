//
//  ChatAvailableReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes reactions available in the chat
public indirect enum ChatAvailableReactions: Codable, Equatable, Hashable {

    /// All reactions are available in the chat
    case chatAvailableReactionsAll(ChatAvailableReactionsAll)

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
            let value = try ChatAvailableReactionsAll(from: decoder)
            self = .chatAvailableReactionsAll(value)
        case .chatAvailableReactionsSome:
            let value = try ChatAvailableReactionsSome(from: decoder)
            self = .chatAvailableReactionsSome(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .chatAvailableReactionsAll(let value):
            try container.encode(Kind.chatAvailableReactionsAll, forKey: .type)
            try value.encode(to: encoder)
        case .chatAvailableReactionsSome(let value):
            try container.encode(Kind.chatAvailableReactionsSome, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// All reactions are available in the chat
public struct ChatAvailableReactionsAll: Codable, Equatable, Hashable {

    /// The maximum allowed number of reactions per message; 1-11
    public let maxReactionCount: Int


    public init(maxReactionCount: Int) {
        self.maxReactionCount = maxReactionCount
    }
}

/// Only specific reactions are available in the chat
public struct ChatAvailableReactionsSome: Codable, Equatable, Hashable {

    /// The maximum allowed number of reactions per message; 1-11
    public let maxReactionCount: Int

    /// The list of reactions
    public let reactions: [ReactionType]


    public init(
        maxReactionCount: Int,
        reactions: [ReactionType]
    ) {
        self.maxReactionCount = maxReactionCount
        self.reactions = reactions
    }
}

