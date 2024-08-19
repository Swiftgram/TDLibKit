//
//  ChannelTransactionPurpose.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.35-9b6ff586
//  https://github.com/tdlib/td/tree/9b6ff586
//

import Foundation


/// Describes purpose of a transaction with a channel
public indirect enum ChannelTransactionPurpose: Codable, Equatable, Hashable {

    /// Paid media were bought
    case channelTransactionPurposePaidMedia(ChannelTransactionPurposePaidMedia)

    /// User joined the channel and subscribed to regular payments in Telegram Stars
    case channelTransactionPurposeJoin(ChannelTransactionPurposeJoin)

    /// User paid for a reaction
    case channelTransactionPurposeReaction(ChannelTransactionPurposeReaction)


    private enum Kind: String, Codable {
        case channelTransactionPurposePaidMedia
        case channelTransactionPurposeJoin
        case channelTransactionPurposeReaction
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .channelTransactionPurposePaidMedia:
            let value = try ChannelTransactionPurposePaidMedia(from: decoder)
            self = .channelTransactionPurposePaidMedia(value)
        case .channelTransactionPurposeJoin:
            let value = try ChannelTransactionPurposeJoin(from: decoder)
            self = .channelTransactionPurposeJoin(value)
        case .channelTransactionPurposeReaction:
            let value = try ChannelTransactionPurposeReaction(from: decoder)
            self = .channelTransactionPurposeReaction(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .channelTransactionPurposePaidMedia(let value):
            try container.encode(Kind.channelTransactionPurposePaidMedia, forKey: .type)
            try value.encode(to: encoder)
        case .channelTransactionPurposeJoin(let value):
            try container.encode(Kind.channelTransactionPurposeJoin, forKey: .type)
            try value.encode(to: encoder)
        case .channelTransactionPurposeReaction(let value):
            try container.encode(Kind.channelTransactionPurposeReaction, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Paid media were bought
public struct ChannelTransactionPurposePaidMedia: Codable, Equatable, Hashable {

    /// The bought media if the trancastion wasn't refunded
    public let media: [PaidMedia]

    /// Identifier of the corresponding message with paid media; can be an identifier of a deleted message
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
public struct ChannelTransactionPurposeJoin: Codable, Equatable, Hashable {

    /// The number of seconds between consecutive Telegram Star debiting
    public let period: Int


    public init(period: Int) {
        self.period = period
    }
}

/// User paid for a reaction
public struct ChannelTransactionPurposeReaction: Codable, Equatable, Hashable {

    /// Identifier of the reacted message; can be an identifier of a deleted message
    public let messageId: Int64


    public init(messageId: Int64) {
        self.messageId = messageId
    }
}

