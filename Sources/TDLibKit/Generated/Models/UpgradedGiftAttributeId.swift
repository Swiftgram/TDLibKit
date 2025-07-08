//
//  UpgradedGiftAttributeId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6c8bfbb5
//  https://github.com/tdlib/td/tree/6c8bfbb5
//

import Foundation


/// Contains identifier of an upgraded gift attribute to search for
public indirect enum UpgradedGiftAttributeId: Codable, Equatable, Hashable {

    /// Identifier of a gift model
    case upgradedGiftAttributeIdModel(UpgradedGiftAttributeIdModel)

    /// Identifier of a gift symbol
    case upgradedGiftAttributeIdSymbol(UpgradedGiftAttributeIdSymbol)

    /// Identifier of a gift backdrop
    case upgradedGiftAttributeIdBackdrop(UpgradedGiftAttributeIdBackdrop)


    private enum Kind: String, Codable {
        case upgradedGiftAttributeIdModel
        case upgradedGiftAttributeIdSymbol
        case upgradedGiftAttributeIdBackdrop
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .upgradedGiftAttributeIdModel:
            let value = try UpgradedGiftAttributeIdModel(from: decoder)
            self = .upgradedGiftAttributeIdModel(value)
        case .upgradedGiftAttributeIdSymbol:
            let value = try UpgradedGiftAttributeIdSymbol(from: decoder)
            self = .upgradedGiftAttributeIdSymbol(value)
        case .upgradedGiftAttributeIdBackdrop:
            let value = try UpgradedGiftAttributeIdBackdrop(from: decoder)
            self = .upgradedGiftAttributeIdBackdrop(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .upgradedGiftAttributeIdModel(let value):
            try container.encode(Kind.upgradedGiftAttributeIdModel, forKey: .type)
            try value.encode(to: encoder)
        case .upgradedGiftAttributeIdSymbol(let value):
            try container.encode(Kind.upgradedGiftAttributeIdSymbol, forKey: .type)
            try value.encode(to: encoder)
        case .upgradedGiftAttributeIdBackdrop(let value):
            try container.encode(Kind.upgradedGiftAttributeIdBackdrop, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Identifier of a gift model
public struct UpgradedGiftAttributeIdModel: Codable, Equatable, Hashable {

    /// Identifier of the sticker representing the model
    public let stickerId: TdInt64


    public init(stickerId: TdInt64) {
        self.stickerId = stickerId
    }
}

/// Identifier of a gift symbol
public struct UpgradedGiftAttributeIdSymbol: Codable, Equatable, Hashable {

    /// Identifier of the sticker representing the symbol
    public let stickerId: TdInt64


    public init(stickerId: TdInt64) {
        self.stickerId = stickerId
    }
}

/// Identifier of a gift backdrop
public struct UpgradedGiftAttributeIdBackdrop: Codable, Equatable, Hashable {

    /// Identifier of the backdrop
    public let backdropId: Int


    public init(backdropId: Int) {
        self.backdropId = backdropId
    }
}

