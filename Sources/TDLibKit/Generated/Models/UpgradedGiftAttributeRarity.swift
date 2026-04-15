//
//  UpgradedGiftAttributeRarity.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8921c22f
//  https://github.com/tdlib/td/tree/8921c22f
//

import Foundation


/// Describes rarity of an upgraded gift attribute
public indirect enum UpgradedGiftAttributeRarity: Codable, Equatable, Hashable {

    /// The rarity is represented as the numeric frequency of the model
    case upgradedGiftAttributeRarityPerMille(UpgradedGiftAttributeRarityPerMille)

    /// The attribute is uncommon
    case upgradedGiftAttributeRarityUncommon

    /// The attribute is rare
    case upgradedGiftAttributeRarityRare

    /// The attribute is epic
    case upgradedGiftAttributeRarityEpic

    /// The attribute is legendary
    case upgradedGiftAttributeRarityLegendary


    private enum Kind: String, Codable {
        case upgradedGiftAttributeRarityPerMille
        case upgradedGiftAttributeRarityUncommon
        case upgradedGiftAttributeRarityRare
        case upgradedGiftAttributeRarityEpic
        case upgradedGiftAttributeRarityLegendary
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .upgradedGiftAttributeRarityPerMille:
            let value = try UpgradedGiftAttributeRarityPerMille(from: decoder)
            self = .upgradedGiftAttributeRarityPerMille(value)
        case .upgradedGiftAttributeRarityUncommon:
            self = .upgradedGiftAttributeRarityUncommon
        case .upgradedGiftAttributeRarityRare:
            self = .upgradedGiftAttributeRarityRare
        case .upgradedGiftAttributeRarityEpic:
            self = .upgradedGiftAttributeRarityEpic
        case .upgradedGiftAttributeRarityLegendary:
            self = .upgradedGiftAttributeRarityLegendary
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .upgradedGiftAttributeRarityPerMille(let value):
            try container.encode(Kind.upgradedGiftAttributeRarityPerMille, forKey: .type)
            try value.encode(to: encoder)
        case .upgradedGiftAttributeRarityUncommon:
            try container.encode(Kind.upgradedGiftAttributeRarityUncommon, forKey: .type)
        case .upgradedGiftAttributeRarityRare:
            try container.encode(Kind.upgradedGiftAttributeRarityRare, forKey: .type)
        case .upgradedGiftAttributeRarityEpic:
            try container.encode(Kind.upgradedGiftAttributeRarityEpic, forKey: .type)
        case .upgradedGiftAttributeRarityLegendary:
            try container.encode(Kind.upgradedGiftAttributeRarityLegendary, forKey: .type)
        }
    }
}

/// The rarity is represented as the numeric frequency of the model
public struct UpgradedGiftAttributeRarityPerMille: Codable, Equatable, Hashable {

    /// The number of upgraded gifts that receive this attribute for each 1000 gifts upgraded; if 0, then it can be shown as "<0.1%"
    public let perMille: Int


    public init(perMille: Int) {
        self.perMille = perMille
    }
}

