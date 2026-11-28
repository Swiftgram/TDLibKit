//
//  UpgradedGiftOrigin.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Describes origin from which the upgraded gift was obtained
public indirect enum UpgradedGiftOrigin: Codable, Equatable, Hashable {

    /// The gift was obtained by upgrading a previously received gift
    case upgradedGiftOriginUpgrade(UpgradedGiftOriginUpgrade)

    /// The gift was transferred from another owner
    case upgradedGiftOriginTransfer

    /// The gift was bought from another user
    case upgradedGiftOriginResale(UpgradedGiftOriginResale)

    /// The minted gift was linked to a user or a chat and isn't owned by the current user. The gift can't be transferred or resold
    case upgradedGiftOriginBlockchain

    /// The sender or receiver of the message has paid for the upgrade of the gift, which has been completed
    case upgradedGiftOriginPrepaidUpgrade

    /// The gift was bought through an offer
    case upgradedGiftOriginOffer(UpgradedGiftOriginOffer)

    /// The gift was crafted from other gifts
    case upgradedGiftOriginCraft

    /// The gift was bought on the TON blockchain using a fixed-price sale contract
    case upgradedGiftOriginOnChainResale(UpgradedGiftOriginOnChainResale)

    /// The gift was bought through an on-chain purchase offer
    case upgradedGiftOriginOnChainOffer(UpgradedGiftOriginOnChainOffer)


    private enum Kind: String, Codable {
        case upgradedGiftOriginUpgrade
        case upgradedGiftOriginTransfer
        case upgradedGiftOriginResale
        case upgradedGiftOriginBlockchain
        case upgradedGiftOriginPrepaidUpgrade
        case upgradedGiftOriginOffer
        case upgradedGiftOriginCraft
        case upgradedGiftOriginOnChainResale
        case upgradedGiftOriginOnChainOffer
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .upgradedGiftOriginUpgrade:
            let value = try UpgradedGiftOriginUpgrade(from: decoder)
            self = .upgradedGiftOriginUpgrade(value)
        case .upgradedGiftOriginTransfer:
            self = .upgradedGiftOriginTransfer
        case .upgradedGiftOriginResale:
            let value = try UpgradedGiftOriginResale(from: decoder)
            self = .upgradedGiftOriginResale(value)
        case .upgradedGiftOriginBlockchain:
            self = .upgradedGiftOriginBlockchain
        case .upgradedGiftOriginPrepaidUpgrade:
            self = .upgradedGiftOriginPrepaidUpgrade
        case .upgradedGiftOriginOffer:
            let value = try UpgradedGiftOriginOffer(from: decoder)
            self = .upgradedGiftOriginOffer(value)
        case .upgradedGiftOriginCraft:
            self = .upgradedGiftOriginCraft
        case .upgradedGiftOriginOnChainResale:
            let value = try UpgradedGiftOriginOnChainResale(from: decoder)
            self = .upgradedGiftOriginOnChainResale(value)
        case .upgradedGiftOriginOnChainOffer:
            let value = try UpgradedGiftOriginOnChainOffer(from: decoder)
            self = .upgradedGiftOriginOnChainOffer(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .upgradedGiftOriginUpgrade(let value):
            try container.encode(Kind.upgradedGiftOriginUpgrade, forKey: .type)
            try value.encode(to: encoder)
        case .upgradedGiftOriginTransfer:
            try container.encode(Kind.upgradedGiftOriginTransfer, forKey: .type)
        case .upgradedGiftOriginResale(let value):
            try container.encode(Kind.upgradedGiftOriginResale, forKey: .type)
            try value.encode(to: encoder)
        case .upgradedGiftOriginBlockchain:
            try container.encode(Kind.upgradedGiftOriginBlockchain, forKey: .type)
        case .upgradedGiftOriginPrepaidUpgrade:
            try container.encode(Kind.upgradedGiftOriginPrepaidUpgrade, forKey: .type)
        case .upgradedGiftOriginOffer(let value):
            try container.encode(Kind.upgradedGiftOriginOffer, forKey: .type)
            try value.encode(to: encoder)
        case .upgradedGiftOriginCraft:
            try container.encode(Kind.upgradedGiftOriginCraft, forKey: .type)
        case .upgradedGiftOriginOnChainResale(let value):
            try container.encode(Kind.upgradedGiftOriginOnChainResale, forKey: .type)
            try value.encode(to: encoder)
        case .upgradedGiftOriginOnChainOffer(let value):
            try container.encode(Kind.upgradedGiftOriginOnChainOffer, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The gift was obtained by upgrading a previously received gift
public struct UpgradedGiftOriginUpgrade: Codable, Equatable, Hashable {

    /// Identifier of the message with the regular gift that was upgraded; may be 0 or an identifier of a deleted message
    public let giftMessageId: Int64


    public init(giftMessageId: Int64) {
        self.giftMessageId = giftMessageId
    }
}

/// The gift was bought from another user
public struct UpgradedGiftOriginResale: Codable, Equatable, Hashable {

    /// Price paid for the gift
    public let price: GiftResalePrice


    public init(price: GiftResalePrice) {
        self.price = price
    }
}

/// The gift was bought through an offer
public struct UpgradedGiftOriginOffer: Codable, Equatable, Hashable {

    /// Price paid for the gift
    public let price: GiftResalePrice


    public init(price: GiftResalePrice) {
        self.price = price
    }
}

/// The gift was bought on the TON blockchain using a fixed-price sale contract
public struct UpgradedGiftOriginOnChainResale: Codable, Equatable, Hashable {

    /// Price paid for the gift, in the smallest units of TON Grams
    public let gramAmount: TdInt64


    public init(gramAmount: TdInt64) {
        self.gramAmount = gramAmount
    }
}

/// The gift was bought through an on-chain purchase offer
public struct UpgradedGiftOriginOnChainOffer: Codable, Equatable, Hashable {

    /// Price paid for the gift, in the smallest units of TON Grams
    public let gramAmount: TdInt64


    public init(gramAmount: TdInt64) {
        self.gramAmount = gramAmount
    }
}

