//
//  StorePaymentPurpose.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-eb98bbe6
//  https://github.com/tdlib/td/tree/eb98bbe6
//

import Foundation


/// Describes a purpose of an in-store payment
public indirect enum StorePaymentPurpose: Codable, Equatable, Hashable {

    /// The user subscribing to Telegram Premium
    case storePaymentPurposePremiumSubscription(StorePaymentPurposePremiumSubscription)

    /// The user creating Telegram Premium gift codes for other users
    case storePaymentPurposePremiumGiftCodes(StorePaymentPurposePremiumGiftCodes)

    /// The user creating a Telegram Premium giveaway
    case storePaymentPurposePremiumGiveaway(StorePaymentPurposePremiumGiveaway)

    /// The user creating a Telegram Star giveaway
    case storePaymentPurposeStarGiveaway(StorePaymentPurposeStarGiveaway)

    /// The user buying Telegram Stars
    case storePaymentPurposeStars(StorePaymentPurposeStars)

    /// The user buying Telegram Stars for other users
    case storePaymentPurposeGiftedStars(StorePaymentPurposeGiftedStars)


    private enum Kind: String, Codable {
        case storePaymentPurposePremiumSubscription
        case storePaymentPurposePremiumGiftCodes
        case storePaymentPurposePremiumGiveaway
        case storePaymentPurposeStarGiveaway
        case storePaymentPurposeStars
        case storePaymentPurposeGiftedStars
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .storePaymentPurposePremiumSubscription:
            let value = try StorePaymentPurposePremiumSubscription(from: decoder)
            self = .storePaymentPurposePremiumSubscription(value)
        case .storePaymentPurposePremiumGiftCodes:
            let value = try StorePaymentPurposePremiumGiftCodes(from: decoder)
            self = .storePaymentPurposePremiumGiftCodes(value)
        case .storePaymentPurposePremiumGiveaway:
            let value = try StorePaymentPurposePremiumGiveaway(from: decoder)
            self = .storePaymentPurposePremiumGiveaway(value)
        case .storePaymentPurposeStarGiveaway:
            let value = try StorePaymentPurposeStarGiveaway(from: decoder)
            self = .storePaymentPurposeStarGiveaway(value)
        case .storePaymentPurposeStars:
            let value = try StorePaymentPurposeStars(from: decoder)
            self = .storePaymentPurposeStars(value)
        case .storePaymentPurposeGiftedStars:
            let value = try StorePaymentPurposeGiftedStars(from: decoder)
            self = .storePaymentPurposeGiftedStars(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .storePaymentPurposePremiumSubscription(let value):
            try container.encode(Kind.storePaymentPurposePremiumSubscription, forKey: .type)
            try value.encode(to: encoder)
        case .storePaymentPurposePremiumGiftCodes(let value):
            try container.encode(Kind.storePaymentPurposePremiumGiftCodes, forKey: .type)
            try value.encode(to: encoder)
        case .storePaymentPurposePremiumGiveaway(let value):
            try container.encode(Kind.storePaymentPurposePremiumGiveaway, forKey: .type)
            try value.encode(to: encoder)
        case .storePaymentPurposeStarGiveaway(let value):
            try container.encode(Kind.storePaymentPurposeStarGiveaway, forKey: .type)
            try value.encode(to: encoder)
        case .storePaymentPurposeStars(let value):
            try container.encode(Kind.storePaymentPurposeStars, forKey: .type)
            try value.encode(to: encoder)
        case .storePaymentPurposeGiftedStars(let value):
            try container.encode(Kind.storePaymentPurposeGiftedStars, forKey: .type)
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

/// The user creating Telegram Premium gift codes for other users
public struct StorePaymentPurposePremiumGiftCodes: Codable, Equatable, Hashable {

    /// Paid amount, in the smallest units of the currency
    public let amount: Int64

    /// Identifier of the supergroup or channel chat, which will be automatically boosted by the users for duration of the Premium subscription and which is administered by the user; 0 if none
    public let boostedChatId: Int64

    /// ISO 4217 currency code of the payment currency
    public let currency: String

    /// Text to show along with the gift codes; 0-getOption("gift_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed
    public let text: FormattedText

    /// Identifiers of the users which can activate the gift codes
    public let userIds: [Int64]


    public init(
        amount: Int64,
        boostedChatId: Int64,
        currency: String,
        text: FormattedText,
        userIds: [Int64]
    ) {
        self.amount = amount
        self.boostedChatId = boostedChatId
        self.currency = currency
        self.text = text
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
    public let parameters: GiveawayParameters


    public init(
        amount: Int64,
        currency: String,
        parameters: GiveawayParameters
    ) {
        self.amount = amount
        self.currency = currency
        self.parameters = parameters
    }
}

/// The user creating a Telegram Star giveaway
public struct StorePaymentPurposeStarGiveaway: Codable, Equatable, Hashable {

    /// Paid amount, in the smallest units of the currency
    public let amount: Int64

    /// ISO 4217 currency code of the payment currency
    public let currency: String

    /// Giveaway parameters
    public let parameters: GiveawayParameters

    /// The number of Telegram Stars to be distributed through the giveaway
    public let starCount: Int64

    /// The number of users to receive Telegram Stars
    public let winnerCount: Int


    public init(
        amount: Int64,
        currency: String,
        parameters: GiveawayParameters,
        starCount: Int64,
        winnerCount: Int
    ) {
        self.amount = amount
        self.currency = currency
        self.parameters = parameters
        self.starCount = starCount
        self.winnerCount = winnerCount
    }
}

/// The user buying Telegram Stars
public struct StorePaymentPurposeStars: Codable, Equatable, Hashable {

    /// Paid amount, in the smallest units of the currency
    public let amount: Int64

    /// ISO 4217 currency code of the payment currency
    public let currency: String

    /// Number of bought Telegram Stars
    public let starCount: Int64


    public init(
        amount: Int64,
        currency: String,
        starCount: Int64
    ) {
        self.amount = amount
        self.currency = currency
        self.starCount = starCount
    }
}

/// The user buying Telegram Stars for other users
public struct StorePaymentPurposeGiftedStars: Codable, Equatable, Hashable {

    /// Paid amount, in the smallest units of the currency
    public let amount: Int64

    /// ISO 4217 currency code of the payment currency
    public let currency: String

    /// Number of bought Telegram Stars
    public let starCount: Int64

    /// Identifier of the user to which Telegram Stars are gifted
    public let userId: Int64


    public init(
        amount: Int64,
        currency: String,
        starCount: Int64,
        userId: Int64
    ) {
        self.amount = amount
        self.currency = currency
        self.starCount = starCount
        self.userId = userId
    }
}

