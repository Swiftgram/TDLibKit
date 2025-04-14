//
//  TelegramPaymentPurpose.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-04adfc87
//  https://github.com/tdlib/td/tree/04adfc87
//

import Foundation


/// Describes a purpose of a payment toward Telegram
public indirect enum TelegramPaymentPurpose: Codable, Equatable, Hashable {

    /// The user gifting Telegram Premium to another user
    case telegramPaymentPurposePremiumGift(TelegramPaymentPurposePremiumGift)

    /// The user boosting a chat by creating Telegram Premium gift codes for other users
    case telegramPaymentPurposePremiumGiftCodes(TelegramPaymentPurposePremiumGiftCodes)

    /// The user creating a Telegram Premium giveaway
    case telegramPaymentPurposePremiumGiveaway(TelegramPaymentPurposePremiumGiveaway)

    /// The user buying Telegram Stars
    case telegramPaymentPurposeStars(TelegramPaymentPurposeStars)

    /// The user buying Telegram Stars for other users
    case telegramPaymentPurposeGiftedStars(TelegramPaymentPurposeGiftedStars)

    /// The user creating a Telegram Star giveaway
    case telegramPaymentPurposeStarGiveaway(TelegramPaymentPurposeStarGiveaway)

    /// The user joins a chat and subscribes to regular payments in Telegram Stars
    case telegramPaymentPurposeJoinChat(TelegramPaymentPurposeJoinChat)


    private enum Kind: String, Codable {
        case telegramPaymentPurposePremiumGift
        case telegramPaymentPurposePremiumGiftCodes
        case telegramPaymentPurposePremiumGiveaway
        case telegramPaymentPurposeStars
        case telegramPaymentPurposeGiftedStars
        case telegramPaymentPurposeStarGiveaway
        case telegramPaymentPurposeJoinChat
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .telegramPaymentPurposePremiumGift:
            let value = try TelegramPaymentPurposePremiumGift(from: decoder)
            self = .telegramPaymentPurposePremiumGift(value)
        case .telegramPaymentPurposePremiumGiftCodes:
            let value = try TelegramPaymentPurposePremiumGiftCodes(from: decoder)
            self = .telegramPaymentPurposePremiumGiftCodes(value)
        case .telegramPaymentPurposePremiumGiveaway:
            let value = try TelegramPaymentPurposePremiumGiveaway(from: decoder)
            self = .telegramPaymentPurposePremiumGiveaway(value)
        case .telegramPaymentPurposeStars:
            let value = try TelegramPaymentPurposeStars(from: decoder)
            self = .telegramPaymentPurposeStars(value)
        case .telegramPaymentPurposeGiftedStars:
            let value = try TelegramPaymentPurposeGiftedStars(from: decoder)
            self = .telegramPaymentPurposeGiftedStars(value)
        case .telegramPaymentPurposeStarGiveaway:
            let value = try TelegramPaymentPurposeStarGiveaway(from: decoder)
            self = .telegramPaymentPurposeStarGiveaway(value)
        case .telegramPaymentPurposeJoinChat:
            let value = try TelegramPaymentPurposeJoinChat(from: decoder)
            self = .telegramPaymentPurposeJoinChat(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .telegramPaymentPurposePremiumGift(let value):
            try container.encode(Kind.telegramPaymentPurposePremiumGift, forKey: .type)
            try value.encode(to: encoder)
        case .telegramPaymentPurposePremiumGiftCodes(let value):
            try container.encode(Kind.telegramPaymentPurposePremiumGiftCodes, forKey: .type)
            try value.encode(to: encoder)
        case .telegramPaymentPurposePremiumGiveaway(let value):
            try container.encode(Kind.telegramPaymentPurposePremiumGiveaway, forKey: .type)
            try value.encode(to: encoder)
        case .telegramPaymentPurposeStars(let value):
            try container.encode(Kind.telegramPaymentPurposeStars, forKey: .type)
            try value.encode(to: encoder)
        case .telegramPaymentPurposeGiftedStars(let value):
            try container.encode(Kind.telegramPaymentPurposeGiftedStars, forKey: .type)
            try value.encode(to: encoder)
        case .telegramPaymentPurposeStarGiveaway(let value):
            try container.encode(Kind.telegramPaymentPurposeStarGiveaway, forKey: .type)
            try value.encode(to: encoder)
        case .telegramPaymentPurposeJoinChat(let value):
            try container.encode(Kind.telegramPaymentPurposeJoinChat, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The user gifting Telegram Premium to another user
public struct TelegramPaymentPurposePremiumGift: Codable, Equatable, Hashable {

    /// Paid amount, in the smallest units of the currency
    public let amount: Int64

    /// ISO 4217 currency code of the payment currency, or "XTR" for payments in Telegram Stars
    public let currency: String

    /// Number of months the Telegram Premium subscription will be active for the user
    public let monthCount: Int

    /// Text to show to the user receiving Telegram Premium; 0-getOption("gift_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed
    public let text: FormattedText

    /// Identifier of the user which will receive Telegram Premium
    public let userId: Int64


    public init(
        amount: Int64,
        currency: String,
        monthCount: Int,
        text: FormattedText,
        userId: Int64
    ) {
        self.amount = amount
        self.currency = currency
        self.monthCount = monthCount
        self.text = text
        self.userId = userId
    }
}

/// The user boosting a chat by creating Telegram Premium gift codes for other users
public struct TelegramPaymentPurposePremiumGiftCodes: Codable, Equatable, Hashable {

    /// Paid amount, in the smallest units of the currency
    public let amount: Int64

    /// Identifier of the supergroup or channel chat, which will be automatically boosted by the users for duration of the Premium subscription and which is administered by the user
    public let boostedChatId: Int64

    /// ISO 4217 currency code of the payment currency
    public let currency: String

    /// Number of months the Telegram Premium subscription will be active for the users
    public let monthCount: Int

    /// Text to show along with the gift codes; 0-getOption("gift_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed
    public let text: FormattedText

    /// Identifiers of the users which can activate the gift codes
    public let userIds: [Int64]


    public init(
        amount: Int64,
        boostedChatId: Int64,
        currency: String,
        monthCount: Int,
        text: FormattedText,
        userIds: [Int64]
    ) {
        self.amount = amount
        self.boostedChatId = boostedChatId
        self.currency = currency
        self.monthCount = monthCount
        self.text = text
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
    public let parameters: GiveawayParameters

    /// Number of users which will be able to activate the gift codes
    public let winnerCount: Int


    public init(
        amount: Int64,
        currency: String,
        monthCount: Int,
        parameters: GiveawayParameters,
        winnerCount: Int
    ) {
        self.amount = amount
        self.currency = currency
        self.monthCount = monthCount
        self.parameters = parameters
        self.winnerCount = winnerCount
    }
}

/// The user buying Telegram Stars
public struct TelegramPaymentPurposeStars: Codable, Equatable, Hashable {

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
public struct TelegramPaymentPurposeGiftedStars: Codable, Equatable, Hashable {

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

/// The user creating a Telegram Star giveaway
public struct TelegramPaymentPurposeStarGiveaway: Codable, Equatable, Hashable {

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

/// The user joins a chat and subscribes to regular payments in Telegram Stars
public struct TelegramPaymentPurposeJoinChat: Codable, Equatable, Hashable {

    /// Invite link to use
    public let inviteLink: String


    public init(inviteLink: String) {
        self.inviteLink = inviteLink
    }
}

