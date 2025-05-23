//
//  UserTransactionPurpose.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.40-22d49d5b
//  https://github.com/tdlib/td/tree/22d49d5b
//

import Foundation


/// Describes purpose of a transaction with a user
public indirect enum UserTransactionPurpose: Codable, Equatable, Hashable {

    /// A user gifted Telegram Stars
    case userTransactionPurposeGiftedStars(UserTransactionPurposeGiftedStars)

    /// The user sold a gift received from another user or bot
    case userTransactionPurposeGiftSell(UserTransactionPurposeGiftSell)

    /// The user or the bot sent a gift to a user
    case userTransactionPurposeGiftSend(UserTransactionPurposeGiftSend)


    private enum Kind: String, Codable {
        case userTransactionPurposeGiftedStars
        case userTransactionPurposeGiftSell
        case userTransactionPurposeGiftSend
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .userTransactionPurposeGiftedStars:
            let value = try UserTransactionPurposeGiftedStars(from: decoder)
            self = .userTransactionPurposeGiftedStars(value)
        case .userTransactionPurposeGiftSell:
            let value = try UserTransactionPurposeGiftSell(from: decoder)
            self = .userTransactionPurposeGiftSell(value)
        case .userTransactionPurposeGiftSend:
            let value = try UserTransactionPurposeGiftSend(from: decoder)
            self = .userTransactionPurposeGiftSend(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .userTransactionPurposeGiftedStars(let value):
            try container.encode(Kind.userTransactionPurposeGiftedStars, forKey: .type)
            try value.encode(to: encoder)
        case .userTransactionPurposeGiftSell(let value):
            try container.encode(Kind.userTransactionPurposeGiftSell, forKey: .type)
            try value.encode(to: encoder)
        case .userTransactionPurposeGiftSend(let value):
            try container.encode(Kind.userTransactionPurposeGiftSend, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A user gifted Telegram Stars
public struct UserTransactionPurposeGiftedStars: Codable, Equatable, Hashable {

    /// A sticker to be shown in the transaction information; may be null if unknown
    public let sticker: Sticker?


    public init(sticker: Sticker?) {
        self.sticker = sticker
    }
}

/// The user sold a gift received from another user or bot
public struct UserTransactionPurposeGiftSell: Codable, Equatable, Hashable {

    /// The gift
    public let gift: Gift


    public init(gift: Gift) {
        self.gift = gift
    }
}

/// The user or the bot sent a gift to a user
public struct UserTransactionPurposeGiftSend: Codable, Equatable, Hashable {

    /// The gift
    public let gift: Gift


    public init(gift: Gift) {
        self.gift = gift
    }
}

