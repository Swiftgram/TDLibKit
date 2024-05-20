//
//  ChatBoostSource.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes source of a chat boost
public indirect enum ChatBoostSource: Codable, Equatable, Hashable {

    /// The chat created a Telegram Premium gift code for a user
    case chatBoostSourceGiftCode(ChatBoostSourceGiftCode)

    /// The chat created a Telegram Premium giveaway
    case chatBoostSourceGiveaway(ChatBoostSourceGiveaway)

    /// A user with Telegram Premium subscription or gifted Telegram Premium boosted the chat
    case chatBoostSourcePremium(ChatBoostSourcePremium)


    private enum Kind: String, Codable {
        case chatBoostSourceGiftCode
        case chatBoostSourceGiveaway
        case chatBoostSourcePremium
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatBoostSourceGiftCode:
            let value = try ChatBoostSourceGiftCode(from: decoder)
            self = .chatBoostSourceGiftCode(value)
        case .chatBoostSourceGiveaway:
            let value = try ChatBoostSourceGiveaway(from: decoder)
            self = .chatBoostSourceGiveaway(value)
        case .chatBoostSourcePremium:
            let value = try ChatBoostSourcePremium(from: decoder)
            self = .chatBoostSourcePremium(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .chatBoostSourceGiftCode(let value):
            try container.encode(Kind.chatBoostSourceGiftCode, forKey: .type)
            try value.encode(to: encoder)
        case .chatBoostSourceGiveaway(let value):
            try container.encode(Kind.chatBoostSourceGiveaway, forKey: .type)
            try value.encode(to: encoder)
        case .chatBoostSourcePremium(let value):
            try container.encode(Kind.chatBoostSourcePremium, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The chat created a Telegram Premium gift code for a user
public struct ChatBoostSourceGiftCode: Codable, Equatable, Hashable {

    /// The created Telegram Premium gift code, which is known only if this is a gift code for the current user, or it has already been claimed
    public let giftCode: String

    /// Identifier of a user, for which the gift code was created
    public let userId: Int64


    public init(
        giftCode: String,
        userId: Int64
    ) {
        self.giftCode = giftCode
        self.userId = userId
    }
}

/// The chat created a Telegram Premium giveaway
public struct ChatBoostSourceGiveaway: Codable, Equatable, Hashable {

    /// The created Telegram Premium gift code if it was used by the user or can be claimed by the current user; an empty string otherwise
    public let giftCode: String

    /// Identifier of the corresponding giveaway message; can be an identifier of a deleted message
    public let giveawayMessageId: Int64

    /// True, if the winner for the corresponding Telegram Premium subscription wasn't chosen, because there were not enough participants
    public let isUnclaimed: Bool

    /// Identifier of a user that won in the giveaway; 0 if none
    public let userId: Int64


    public init(
        giftCode: String,
        giveawayMessageId: Int64,
        isUnclaimed: Bool,
        userId: Int64
    ) {
        self.giftCode = giftCode
        self.giveawayMessageId = giveawayMessageId
        self.isUnclaimed = isUnclaimed
        self.userId = userId
    }
}

/// A user with Telegram Premium subscription or gifted Telegram Premium boosted the chat
public struct ChatBoostSourcePremium: Codable, Equatable, Hashable {

    /// Identifier of the user
    public let userId: Int64


    public init(userId: Int64) {
        self.userId = userId
    }
}

