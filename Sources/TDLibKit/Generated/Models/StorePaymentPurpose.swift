//
//  StorePaymentPurpose.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a purpose of an in-store payment
public indirect enum StorePaymentPurpose: Codable, Equatable, Hashable {

    /// The user subscribing to Telegram Premium
    case storePaymentPurposePremiumSubscription(StorePaymentPurposePremiumSubscription)

    /// The user gifting Telegram Premium to another user
    case storePaymentPurposeGiftedPremium(StorePaymentPurposeGiftedPremium)

    /// The user creating Telegram Premium gift codes for other users
    case storePaymentPurposePremiumGiftCodes(StorePaymentPurposePremiumGiftCodes)

    /// The user creating a Telegram Premium giveaway
    case storePaymentPurposePremiumGiveaway(StorePaymentPurposePremiumGiveaway)


    private enum Kind: String, Codable {
        case storePaymentPurposePremiumSubscription
        case storePaymentPurposeGiftedPremium
        case storePaymentPurposePremiumGiftCodes
        case storePaymentPurposePremiumGiveaway
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .storePaymentPurposePremiumSubscription:
            let value = try StorePaymentPurposePremiumSubscription(from: decoder)
            self = .storePaymentPurposePremiumSubscription(value)
        case .storePaymentPurposeGiftedPremium:
            let value = try StorePaymentPurposeGiftedPremium(from: decoder)
            self = .storePaymentPurposeGiftedPremium(value)
        case .storePaymentPurposePremiumGiftCodes:
            let value = try StorePaymentPurposePremiumGiftCodes(from: decoder)
            self = .storePaymentPurposePremiumGiftCodes(value)
        case .storePaymentPurposePremiumGiveaway:
            let value = try StorePaymentPurposePremiumGiveaway(from: decoder)
            self = .storePaymentPurposePremiumGiveaway(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .storePaymentPurposePremiumSubscription(let value):
            try container.encode(Kind.storePaymentPurposePremiumSubscription, forKey: .type)
            try value.encode(to: encoder)
        case .storePaymentPurposeGiftedPremium(let value):
            try container.encode(Kind.storePaymentPurposeGiftedPremium, forKey: .type)
            try value.encode(to: encoder)
        case .storePaymentPurposePremiumGiftCodes(let value):
            try container.encode(Kind.storePaymentPurposePremiumGiftCodes, forKey: .type)
            try value.encode(to: encoder)
        case .storePaymentPurposePremiumGiveaway(let value):
            try container.encode(Kind.storePaymentPurposePremiumGiveaway, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The user subscribing to Telegram Premium
public struct StorePaymentPurposePremiumSubscription: Codable, Equatable, Hashable {

    /// Pass true if this is a restore of a Telegram Premium purchase; only for App Store
    public let isRestore: Bool

    /// Pass true if this is an upgrade from a monthly subscription to early subscription; only for App Store
    public let isUpgrade: Bool


    public init(
        isRestore: Bool,
        isUpgrade: Bool
    ) {
        self.isRestore = isRestore
        self.isUpgrade = isUpgrade
    }
}

/// The user gifting Telegram Premium to another user
public struct StorePaymentPurposeGiftedPremium: Codable, Equatable, Hashable {

    /// Paid amount, in the smallest units of the currency
    public let amount: Int64

    /// ISO 4217 currency code of the payment currency
    public let currency: String

    /// Identifier of the user to which Premium was gifted
    public let userId: Int64


    public init(
        amount: Int64,
        currency: String,
        userId: Int64
    ) {
        self.amount = amount
        self.currency = currency
        self.userId = userId
    }
}

/// The user creating Telegram Premium gift codes for other users
public struct StorePaymentPurposePremiumGiftCodes: Codable, Equatable, Hashable {

    /// Paid amount, in the smallest units of the currency
    public let amount: Int64

    /// Identifier of the supergroup or channel chat, which will be automatically boosted by the users for duration of the Premium subscription and which is administered by the user; 0 if none
    public let boostedChatId: Int64

    /// ISO 4217 currency code of the payment currency
    public let currency: String

    /// Identifiers of the users which can activate the gift codes
    public let userIds: [Int64]


    public init(
        amount: Int64,
        boostedChatId: Int64,
        currency: String,
        userIds: [Int64]
    ) {
        self.amount = amount
        self.boostedChatId = boostedChatId
        self.currency = currency
        self.userIds = userIds
    }
}

/// The user creating a Telegram Premium giveaway
public struct StorePaymentPurposePremiumGiveaway: Codable, Equatable, Hashable {

    /// Paid amount, in the smallest units of the currency
    public let amount: Int64

    /// ISO 4217 currency code of the payment currency
    public let currency: String

    /// Giveaway parameters
    public let parameters: PremiumGiveawayParameters


    public init(
        amount: Int64,
        currency: String,
        parameters: PremiumGiveawayParameters
    ) {
        self.amount = amount
        self.currency = currency
        self.parameters = parameters
    }
}

