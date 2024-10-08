//
//  StarTransactionPartner.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-6dae0a56
//  https://github.com/tdlib/td/tree/6dae0a56
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

    /// The transaction is a transaction with a business account
    case starTransactionPartnerBusiness(StarTransactionPartnerBusiness)

    /// The transaction is a transaction with a supergroup or a channel chat
    case starTransactionPartnerChat(StarTransactionPartnerChat)

    /// The transaction is a transcation with another user
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
        case starTransactionPartnerBusiness
        case starTransactionPartnerChat
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
        case .starTransactionPartnerBusiness:
            let value = try StarTransactionPartnerBusiness(from: decoder)
            self = .starTransactionPartnerBusiness(value)
        case .starTransactionPartnerChat:
            let value = try StarTransactionPartnerChat(from: decoder)
            self = .starTransactionPartnerChat(value)
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
        case .starTransactionPartnerBusiness(let value):
            try container.encode(Kind.starTransactionPartnerBusiness, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionPartnerChat(let value):
            try container.encode(Kind.starTransactionPartnerChat, forKey: .type)
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

    /// Purpose of the transaction
    public let purpose: BotTransactionPurpose

    /// Identifier of the bot
    public let userId: Int64


    public init(
        purpose: BotTransactionPurpose,
        userId: Int64
    ) {
        self.purpose = purpose
        self.userId = userId
    }
}

/// The transaction is a transaction with a business account
public struct StarTransactionPartnerBusiness: Codable, Equatable, Hashable {

    /// The bought media if the trancastion wasn't refunded
    public let media: [PaidMedia]

    /// Identifier of the business account user
    public let userId: Int64


    public init(
        media: [PaidMedia],
        userId: Int64
    ) {
        self.media = media
        self.userId = userId
    }
}

/// The transaction is a transaction with a supergroup or a channel chat
public struct StarTransactionPartnerChat: Codable, Equatable, Hashable {

    /// Identifier of the chat
    public let chatId: Int64

    /// Purpose of the transaction
    public let purpose: ChatTransactionPurpose


    public init(
        chatId: Int64,
        purpose: ChatTransactionPurpose
    ) {
        self.chatId = chatId
        self.purpose = purpose
    }
}

/// The transaction is a transcation with another user
public struct StarTransactionPartnerUser: Codable, Equatable, Hashable {

    /// Purpose of the transaction
    public let purpose: UserTransactionPurpose

    /// Identifier of the user; 0 if the user was anonymous
    public let userId: Int64


    public init(
        purpose: UserTransactionPurpose,
        userId: Int64
    ) {
        self.purpose = purpose
        self.userId = userId
    }
}

