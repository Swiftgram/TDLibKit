//
//  StarTransactionPartner.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.34-81dc2e24
//  https://github.com/tdlib/td/tree/81dc2e24
//

import Foundation


/// Describes source or recipient of a transaction with Telegram Stars
public indirect enum StarTransactionPartner: Codable, Equatable, Hashable {

    /// The transaction is a transaction with Telegram through a bot
    case starTransactionPartnerTelegram

    /// The transaction is a transaction with App Store
    case starTransactionPartnerAppStore

    /// The transaction is a transaction with Google Play
    case starTransactionPartnerGooglePlay

    /// The transaction is a transaction with Fragment
    case starTransactionPartnerFragment(StarTransactionPartnerFragment)

    /// The transaction is a transaction with Telegram Ad platform
    case starTransactionPartnerTelegramAds

    /// The transaction is a transaction with a bot
    case starTransactionPartnerBot(StarTransactionPartnerBot)

    /// The transaction is a transaction with a channel chat
    case starTransactionPartnerChannel(StarTransactionPartnerChannel)

    /// The transaction is a gift of Telegram Stars from another user
    case starTransactionPartnerUser(StarTransactionPartnerUser)

    /// The transaction is a transaction with unknown partner
    case starTransactionPartnerUnsupported


    private enum Kind: String, Codable {
        case starTransactionPartnerTelegram
        case starTransactionPartnerAppStore
        case starTransactionPartnerGooglePlay
        case starTransactionPartnerFragment
        case starTransactionPartnerTelegramAds
        case starTransactionPartnerBot
        case starTransactionPartnerChannel
        case starTransactionPartnerUser
        case starTransactionPartnerUnsupported
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .starTransactionPartnerTelegram:
            self = .starTransactionPartnerTelegram
        case .starTransactionPartnerAppStore:
            self = .starTransactionPartnerAppStore
        case .starTransactionPartnerGooglePlay:
            self = .starTransactionPartnerGooglePlay
        case .starTransactionPartnerFragment:
            let value = try StarTransactionPartnerFragment(from: decoder)
            self = .starTransactionPartnerFragment(value)
        case .starTransactionPartnerTelegramAds:
            self = .starTransactionPartnerTelegramAds
        case .starTransactionPartnerBot:
            let value = try StarTransactionPartnerBot(from: decoder)
            self = .starTransactionPartnerBot(value)
        case .starTransactionPartnerChannel:
            let value = try StarTransactionPartnerChannel(from: decoder)
            self = .starTransactionPartnerChannel(value)
        case .starTransactionPartnerUser:
            let value = try StarTransactionPartnerUser(from: decoder)
            self = .starTransactionPartnerUser(value)
        case .starTransactionPartnerUnsupported:
            self = .starTransactionPartnerUnsupported
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .starTransactionPartnerTelegram:
            try container.encode(Kind.starTransactionPartnerTelegram, forKey: .type)
        case .starTransactionPartnerAppStore:
            try container.encode(Kind.starTransactionPartnerAppStore, forKey: .type)
        case .starTransactionPartnerGooglePlay:
            try container.encode(Kind.starTransactionPartnerGooglePlay, forKey: .type)
        case .starTransactionPartnerFragment(let value):
            try container.encode(Kind.starTransactionPartnerFragment, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionPartnerTelegramAds:
            try container.encode(Kind.starTransactionPartnerTelegramAds, forKey: .type)
        case .starTransactionPartnerBot(let value):
            try container.encode(Kind.starTransactionPartnerBot, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionPartnerChannel(let value):
            try container.encode(Kind.starTransactionPartnerChannel, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionPartnerUser(let value):
            try container.encode(Kind.starTransactionPartnerUser, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionPartnerUnsupported:
            try container.encode(Kind.starTransactionPartnerUnsupported, forKey: .type)
        }
    }
}

/// The transaction is a transaction with Fragment
public struct StarTransactionPartnerFragment: Codable, Equatable, Hashable {

    /// State of the withdrawal; may be null for refunds from Fragment
    public let withdrawalState: RevenueWithdrawalState?


    public init(withdrawalState: RevenueWithdrawalState?) {
        self.withdrawalState = withdrawalState
    }
}

/// The transaction is a transaction with a bot
public struct StarTransactionPartnerBot: Codable, Equatable, Hashable {

    /// Invoice payload; for bots only
    public let invoicePayload: Data

    /// Information about the bought product; may be null if not applicable
    public let productInfo: ProductInfo?

    /// Identifier of the bot for the user, or the user for the bot
    public let userId: Int64


    public init(
        invoicePayload: Data,
        productInfo: ProductInfo?,
        userId: Int64
    ) {
        self.invoicePayload = invoicePayload
        self.productInfo = productInfo
        self.userId = userId
    }
}

/// The transaction is a transaction with a channel chat
public struct StarTransactionPartnerChannel: Codable, Equatable, Hashable {

    /// Identifier of the chat
    public let chatId: Int64

    /// Information about the bought media
    public let media: [PaidMedia]

    /// Identifier of the corresponding message with paid media; can be an identifier of a deleted message
    public let paidMediaMessageId: Int64


    public init(
        chatId: Int64,
        media: [PaidMedia],
        paidMediaMessageId: Int64
    ) {
        self.chatId = chatId
        self.media = media
        self.paidMediaMessageId = paidMediaMessageId
    }
}

/// The transaction is a gift of Telegram Stars from another user
public struct StarTransactionPartnerUser: Codable, Equatable, Hashable {

    /// A sticker to be shown in the transaction information; may be null if unknown
    public let sticker: Sticker?

    /// Identifier of the user; 0 if the gift was anonymous
    public let userId: Int64


    public init(
        sticker: Sticker?,
        userId: Int64
    ) {
        self.sticker = sticker
        self.userId = userId
    }
}

