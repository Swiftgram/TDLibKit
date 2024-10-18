//
//  ChatTransactionPurpose.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-c1fea0f2
//  https://github.com/tdlib/td/tree/c1fea0f2
//

import Foundation


/// Describes purpose of a transaction with a supergroup or a channel
public indirect enum ChatTransactionPurpose: Codable, Equatable, Hashable {

    /// Paid media were bought
    case chatTransactionPurposePaidMedia(ChatTransactionPurposePaidMedia)

    /// User joined the channel and subscribed to regular payments in Telegram Stars
    case chatTransactionPurposeJoin(ChatTransactionPurposeJoin)

    /// User paid for a reaction
    case chatTransactionPurposeReaction(ChatTransactionPurposeReaction)

    /// User received Telegram Stars from a giveaway
    case chatTransactionPurposeGiveaway(ChatTransactionPurposeGiveaway)


    private enum Kind: String, Codable {
        case chatTransactionPurposePaidMedia
        case chatTransactionPurposeJoin
        case chatTransactionPurposeReaction
        case chatTransactionPurposeGiveaway
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatTransactionPurposePaidMedia:
            let value = try ChatTransactionPurposePaidMedia(from: decoder)
            self = .chatTransactionPurposePaidMedia(value)
        case .chatTransactionPurposeJoin:
            let value = try ChatTransactionPurposeJoin(from: decoder)
            self = .chatTransactionPurposeJoin(value)
        case .chatTransactionPurposeReaction:
            let value = try ChatTransactionPurposeReaction(from: decoder)
            self = .chatTransactionPurposeReaction(value)
        case .chatTransactionPurposeGiveaway:
            let value = try ChatTransactionPurposeGiveaway(from: decoder)
            self = .chatTransactionPurposeGiveaway(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .chatTransactionPurposePaidMedia(let value):
            try container.encode(Kind.chatTransactionPurposePaidMedia, forKey: .type)
            try value.encode(to: encoder)
        case .chatTransactionPurposeJoin(let value):
            try container.encode(Kind.chatTransactionPurposeJoin, forKey: .type)
            try value.encode(to: encoder)
        case .chatTransactionPurposeReaction(let value):
            try container.encode(Kind.chatTransactionPurposeReaction, forKey: .type)
            try value.encode(to: encoder)
        case .chatTransactionPurposeGiveaway(let value):
            try container.encode(Kind.chatTransactionPurposeGiveaway, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Paid media were bought
public struct ChatTransactionPurposePaidMedia: Codable, Equatable, Hashable {

    /// The bought media if the trancastion wasn't refunded
    public let media: [PaidMedia]

    /// Identifier of the corresponding message with paid media; can be 0 or an identifier of a deleted message
    public let messageId: Int64


    public init(
        media: [PaidMedia],
        messageId: Int64
    ) {
        self.media = media
        self.messageId = messageId
    }
}

/// User joined the channel and subscribed to regular payments in Telegram Stars
public struct ChatTransactionPurposeJoin: Codable, Equatable, Hashable {

    /// The number of seconds between consecutive Telegram Star debiting
    public let period: Int


    public init(period: Int) {
        self.period = period
    }
}

/// User paid for a reaction
public struct ChatTransactionPurposeReaction: Codable, Equatable, Hashable {

    /// Identifier of the reacted message; can be 0 or an identifier of a deleted message
    public let messageId: Int64


    public init(messageId: Int64) {
        self.messageId = messageId
    }
}

/// User received Telegram Stars from a giveaway
public struct ChatTransactionPurposeGiveaway: Codable, Equatable, Hashable {

    /// Identifier of the message with giveaway; can be 0 or an identifier of a deleted message
    public let giveawayMessageId: Int64


    public init(giveawayMessageId: Int64) {
        self.giveawayMessageId = giveawayMessageId
    }
}

