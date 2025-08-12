//
//  UpgradedGiftOrigin.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-bc32c4b2
//  https://github.com/tdlib/td/tree/bc32c4b2
//

import Foundation


/// Describes origin from which the upgraded gift was obtained
public indirect enum UpgradedGiftOrigin: Codable, Equatable, Hashable {

    /// The gift was obtained by upgrading of a previously received gift
    case upgradedGiftOriginUpgrade(UpgradedGiftOriginUpgrade)

    /// The gift was transferred from another owner
    case upgradedGiftOriginTransfer

    /// The gift was bought from another user
    case upgradedGiftOriginResale(UpgradedGiftOriginResale)


    private enum Kind: String, Codable {
        case upgradedGiftOriginUpgrade
        case upgradedGiftOriginTransfer
        case upgradedGiftOriginResale
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
        }
    }
}

/// The gift was obtained by upgrading of a previously received gift
public struct UpgradedGiftOriginUpgrade: Codable, Equatable, Hashable {

    /// Identifier of the message with the regular gift that was upgraded; can be 0 or an identifier of a deleted message
    public let giftMessageId: Int64


    public init(giftMessageId: Int64) {
        self.giftMessageId = giftMessageId
    }
}

/// The gift was bought from another user
public struct UpgradedGiftOriginResale: Codable, Equatable, Hashable {

    /// Number of Telegram Stars that were paid by the sender for the gift
    public let starCount: Int64


    public init(starCount: Int64) {
        self.starCount = starCount
    }
}

