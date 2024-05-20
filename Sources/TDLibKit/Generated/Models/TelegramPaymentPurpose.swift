//
//  TelegramPaymentPurpose.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a purpose of a payment toward Telegram
public indirect enum TelegramPaymentPurpose: Codable, Equatable, Hashable {

    /// The user creating Telegram Premium gift codes for other users
    case telegramPaymentPurposePremiumGiftCodes(TelegramPaymentPurposePremiumGiftCodes)

    /// The user creating a Telegram Premium giveaway
    case telegramPaymentPurposePremiumGiveaway(TelegramPaymentPurposePremiumGiveaway)


    private enum Kind: String, Codable {
        case telegramPaymentPurposePremiumGiftCodes
        case telegramPaymentPurposePremiumGiveaway
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .telegramPaymentPurposePremiumGiftCodes:
            let value = try TelegramPaymentPurposePremiumGiftCodes(from: decoder)
            self = .telegramPaymentPurposePremiumGiftCodes(value)
        case .telegramPaymentPurposePremiumGiveaway:
            let value = try TelegramPaymentPurposePremiumGiveaway(from: decoder)
            self = .telegramPaymentPurposePremiumGiveaway(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .telegramPaymentPurposePremiumGiftCodes(let value):
            try container.encode(Kind.telegramPaymentPurposePremiumGiftCodes, forKey: .type)
            try value.encode(to: encoder)
        case .telegramPaymentPurposePremiumGiveaway(let value):
            try container.encode(Kind.telegramPaymentPurposePremiumGiveaway, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The user creating Telegram Premium gift codes for other users
public struct TelegramPaymentPurposePremiumGiftCodes: Codable, Equatable, Hashable {

    /// Paid amount, in the smallest units of the currency
    public let amount: Int64

    /// Identifier of the supergroup or channel chat, which will be automatically boosted by the users for duration of the Premium subscription and which is administered by the user; 0 if none
    public let boostedChatId: Int64

    /// ISO 4217 currency code of the payment currency
    public let currency: String

    /// Number of months the Telegram Premium subscription will be active for the users
    public let monthCount: Int

    /// Identifiers of the users which can activate the gift codes
    public let userIds: [Int64]


    public init(
        amount: Int64,
        boostedChatId: Int64,
        currency: String,
        monthCount: Int,
        userIds: [Int64]
    ) {
        self.amount = amount
        self.boostedChatId = boostedChatId
        self.currency = currency
        self.monthCount = monthCount
        self.userIds = userIds
    }
}

/// The user creating a Telegram Premium giveaway
public struct TelegramPaymentPurposePremiumGiveaway: Codable, Equatable, Hashable {

    /// Paid amount, in the smallest units of the currency
    public let amount: Int64

    /// ISO 4217 currency code of the payment currency
    public let currency: String

    /// Number of months the Telegram Premium subscription will be active for the users
    public let monthCount: Int

    /// Giveaway parameters
    public let parameters: PremiumGiveawayParameters

    /// Number of users which will be able to activate the gift codes
    public let winnerCount: Int


    public init(
        amount: Int64,
        currency: String,
        monthCount: Int,
        parameters: PremiumGiveawayParameters,
        winnerCount: Int
    ) {
        self.amount = amount
        self.currency = currency
        self.monthCount = monthCount
        self.parameters = parameters
        self.winnerCount = winnerCount
    }
}

