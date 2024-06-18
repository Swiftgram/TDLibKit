//
//  StarTransactionPartner.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.31-8f19c751
//  https://github.com/tdlib/td/tree/8f19c751
//

import Foundation


/// Describes source or recipient of a transaction with Telegram stars
public indirect enum StarTransactionPartner: Codable, Equatable, Hashable {

    /// The transaction is a transaction with Telegram through a bot
    case starTransactionPartnerTelegram

    /// The transaction is a transaction with App Store
    case starTransactionPartnerAppStore

    /// The transaction is a transaction with Google Play
    case starTransactionPartnerGooglePlay

    /// The transaction is a transaction with Fragment
    case starTransactionPartnerFragment(StarTransactionPartnerFragment)

    /// The transaction is a transaction with another user
    case starTransactionPartnerUser(StarTransactionPartnerUser)

    /// The transaction is a transaction with a channel chat
    case starTransactionPartnerChannel(StarTransactionPartnerChannel)

    /// The transaction is a transaction with unknown partner
    case starTransactionPartnerUnsupported


    private enum Kind: String, Codable {
        case starTransactionPartnerTelegram
        case starTransactionPartnerAppStore
        case starTransactionPartnerGooglePlay
        case starTransactionPartnerFragment
        case starTransactionPartnerUser
        case starTransactionPartnerChannel
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
        case .starTransactionPartnerUser:
            let value = try StarTransactionPartnerUser(from: decoder)
            self = .starTransactionPartnerUser(value)
        case .starTransactionPartnerChannel:
            let value = try StarTransactionPartnerChannel(from: decoder)
            self = .starTransactionPartnerChannel(value)
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
        case .starTransactionPartnerUser(let value):
            try container.encode(Kind.starTransactionPartnerUser, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionPartnerChannel(let value):
            try container.encode(Kind.starTransactionPartnerChannel, forKey: .type)
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

/// The transaction is a transaction with another user
public struct StarTransactionPartnerUser: Codable, Equatable, Hashable {

    /// Information about the bought product; may be null if none
    public let productInfo: ProductInfo?

    /// Identifier of the user
    public let userId: Int64


    public init(
        productInfo: ProductInfo?,
        userId: Int64
    ) {
        self.productInfo = productInfo
        self.userId = userId
    }
}

/// The transaction is a transaction with a channel chat
public struct StarTransactionPartnerChannel: Codable, Equatable, Hashable {

    /// Identifier of the chat
    public let chatId: Int64


    public init(chatId: Int64) {
        self.chatId = chatId
    }
}

