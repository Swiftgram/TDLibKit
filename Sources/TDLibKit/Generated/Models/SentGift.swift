//
//  SentGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
//

import Foundation


/// Represents a gift received by a user
public indirect enum SentGift: Codable, Equatable, Hashable {

    /// Regular gift
    case sentGiftRegular(SentGiftRegular)

    /// Upgraded gift
    case sentGiftUpgraded(SentGiftUpgraded)


    private enum Kind: String, Codable {
        case sentGiftRegular
        case sentGiftUpgraded
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .sentGiftRegular:
            let value = try SentGiftRegular(from: decoder)
            self = .sentGiftRegular(value)
        case .sentGiftUpgraded:
            let value = try SentGiftUpgraded(from: decoder)
            self = .sentGiftUpgraded(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .sentGiftRegular(let value):
            try container.encode(Kind.sentGiftRegular, forKey: .type)
            try value.encode(to: encoder)
        case .sentGiftUpgraded(let value):
            try container.encode(Kind.sentGiftUpgraded, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Regular gift
public struct SentGiftRegular: Codable, Equatable, Hashable {

    /// The gift
    public let gift: Gift


    public init(gift: Gift) {
        self.gift = gift
    }
}

/// Upgraded gift
public struct SentGiftUpgraded: Codable, Equatable, Hashable {

    /// The gift
    public let gift: UpgradedGift


    public init(gift: UpgradedGift) {
        self.gift = gift
    }
}

