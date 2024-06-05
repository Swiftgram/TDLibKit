//
//  StarTransactionSource.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-b102c3ad
//  https://github.com/tdlib/td/tree/b102c3ad
//

import Foundation


/// Describes source or recipient of a transaction with Telegram stars
public indirect enum StarTransactionSource: Codable, Equatable, Hashable {

    /// The transaction is a transaction with Telegram through a bot
    case starTransactionSourceTelegram

    /// The transaction is a transaction with App Store
    case starTransactionSourceAppStore

    /// The transaction is a transaction with Google Play
    case starTransactionSourceGooglePlay

    /// The transaction is a transaction with Fragment
    case starTransactionSourceFragment

    /// The transaction is a transaction with another user
    case starTransactionSourceUser(StarTransactionSourceUser)

    /// The transaction is a transaction with unknown source
    case starTransactionSourceUnsupported


    private enum Kind: String, Codable {
        case starTransactionSourceTelegram
        case starTransactionSourceAppStore
        case starTransactionSourceGooglePlay
        case starTransactionSourceFragment
        case starTransactionSourceUser
        case starTransactionSourceUnsupported
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .starTransactionSourceTelegram:
            self = .starTransactionSourceTelegram
        case .starTransactionSourceAppStore:
            self = .starTransactionSourceAppStore
        case .starTransactionSourceGooglePlay:
            self = .starTransactionSourceGooglePlay
        case .starTransactionSourceFragment:
            self = .starTransactionSourceFragment
        case .starTransactionSourceUser:
            let value = try StarTransactionSourceUser(from: decoder)
            self = .starTransactionSourceUser(value)
        case .starTransactionSourceUnsupported:
            self = .starTransactionSourceUnsupported
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .starTransactionSourceTelegram:
            try container.encode(Kind.starTransactionSourceTelegram, forKey: .type)
        case .starTransactionSourceAppStore:
            try container.encode(Kind.starTransactionSourceAppStore, forKey: .type)
        case .starTransactionSourceGooglePlay:
            try container.encode(Kind.starTransactionSourceGooglePlay, forKey: .type)
        case .starTransactionSourceFragment:
            try container.encode(Kind.starTransactionSourceFragment, forKey: .type)
        case .starTransactionSourceUser(let value):
            try container.encode(Kind.starTransactionSourceUser, forKey: .type)
            try value.encode(to: encoder)
        case .starTransactionSourceUnsupported:
            try container.encode(Kind.starTransactionSourceUnsupported, forKey: .type)
        }
    }
}

/// The transaction is a transaction with another user
public struct StarTransactionSourceUser: Codable, Equatable, Hashable {

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

