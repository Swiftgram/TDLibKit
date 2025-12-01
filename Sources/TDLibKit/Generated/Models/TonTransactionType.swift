//
//  TonTransactionType.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
//

import Foundation


/// Describes type of transaction with Toncoins
public indirect enum TonTransactionType: Codable, Equatable, Hashable {

    /// The transaction is a deposit of Toncoins from Fragment
    case tonTransactionTypeFragmentDeposit(TonTransactionTypeFragmentDeposit)

    /// The transaction is a payment for a suggested post
    case tonTransactionTypeSuggestedPostPayment(TonTransactionTypeSuggestedPostPayment)

    /// The transaction is a purchase of an upgraded gift for some user or channel; for regular users only
    case tonTransactionTypeUpgradedGiftPurchase(TonTransactionTypeUpgradedGiftPurchase)

    /// The transaction is a sale of an upgraded gift; for regular users only
    case tonTransactionTypeUpgradedGiftSale(TonTransactionTypeUpgradedGiftSale)

    /// The transaction is a transaction of an unsupported type
    case tonTransactionTypeUnsupported


    private enum Kind: String, Codable {
        case tonTransactionTypeFragmentDeposit
        case tonTransactionTypeSuggestedPostPayment
        case tonTransactionTypeUpgradedGiftPurchase
        case tonTransactionTypeUpgradedGiftSale
        case tonTransactionTypeUnsupported
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .tonTransactionTypeFragmentDeposit:
            let value = try TonTransactionTypeFragmentDeposit(from: decoder)
            self = .tonTransactionTypeFragmentDeposit(value)
        case .tonTransactionTypeSuggestedPostPayment:
            let value = try TonTransactionTypeSuggestedPostPayment(from: decoder)
            self = .tonTransactionTypeSuggestedPostPayment(value)
        case .tonTransactionTypeUpgradedGiftPurchase:
            let value = try TonTransactionTypeUpgradedGiftPurchase(from: decoder)
            self = .tonTransactionTypeUpgradedGiftPurchase(value)
        case .tonTransactionTypeUpgradedGiftSale:
            let value = try TonTransactionTypeUpgradedGiftSale(from: decoder)
            self = .tonTransactionTypeUpgradedGiftSale(value)
        case .tonTransactionTypeUnsupported:
            self = .tonTransactionTypeUnsupported
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .tonTransactionTypeFragmentDeposit(let value):
            try container.encode(Kind.tonTransactionTypeFragmentDeposit, forKey: .type)
            try value.encode(to: encoder)
        case .tonTransactionTypeSuggestedPostPayment(let value):
            try container.encode(Kind.tonTransactionTypeSuggestedPostPayment, forKey: .type)
            try value.encode(to: encoder)
        case .tonTransactionTypeUpgradedGiftPurchase(let value):
            try container.encode(Kind.tonTransactionTypeUpgradedGiftPurchase, forKey: .type)
            try value.encode(to: encoder)
        case .tonTransactionTypeUpgradedGiftSale(let value):
            try container.encode(Kind.tonTransactionTypeUpgradedGiftSale, forKey: .type)
            try value.encode(to: encoder)
        case .tonTransactionTypeUnsupported:
            try container.encode(Kind.tonTransactionTypeUnsupported, forKey: .type)
        }
    }
}

/// The transaction is a deposit of Toncoins from Fragment
public struct TonTransactionTypeFragmentDeposit: Codable, Equatable, Hashable {

    /// True, if the transaction is a gift from another user
    public let isGift: Bool

    /// The sticker to be shown in the transaction information; may be null if unknown
    public let sticker: Sticker?


    public init(
        isGift: Bool,
        sticker: Sticker?
    ) {
        self.isGift = isGift
        self.sticker = sticker
    }
}

/// The transaction is a payment for a suggested post
public struct TonTransactionTypeSuggestedPostPayment: Codable, Equatable, Hashable {

    /// Identifier of the channel chat that posted the post
    public let chatId: Int64


    public init(chatId: Int64) {
        self.chatId = chatId
    }
}

/// The transaction is a purchase of an upgraded gift for some user or channel; for regular users only
public struct TonTransactionTypeUpgradedGiftPurchase: Codable, Equatable, Hashable {

    /// The gift
    public let gift: UpgradedGift

    /// Identifier of the user that sold the gift
    public let userId: Int64


    public init(
        gift: UpgradedGift,
        userId: Int64
    ) {
        self.gift = gift
        self.userId = userId
    }
}

/// The transaction is a sale of an upgraded gift; for regular users only
public struct TonTransactionTypeUpgradedGiftSale: Codable, Equatable, Hashable {

    /// The number of Toncoins received by the Telegram for each 1000 Toncoins received by the seller of the gift
    public let commissionPerMille: Int

    /// The amount of Toncoins that were received by the Telegram; in the smallest units of the currency
    public let commissionToncoinAmount: Int64

    /// The gift
    public let gift: UpgradedGift

    /// Identifier of the user that bought the gift
    public let userId: Int64


    public init(
        commissionPerMille: Int,
        commissionToncoinAmount: Int64,
        gift: UpgradedGift,
        userId: Int64
    ) {
        self.commissionPerMille = commissionPerMille
        self.commissionToncoinAmount = commissionToncoinAmount
        self.gift = gift
        self.userId = userId
    }
}

