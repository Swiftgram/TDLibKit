//
//  CraftGiftResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8921c22f
//  https://github.com/tdlib/td/tree/8921c22f
//

import Foundation


/// Contains result of gift crafting
public indirect enum CraftGiftResult: Codable, Equatable, Hashable {

    /// Crafting was successful
    case craftGiftResultSuccess(CraftGiftResultSuccess)

    /// Crafting isn't possible because one of the gifts can't be used for crafting yet
    case craftGiftResultTooEarly(CraftGiftResultTooEarly)

    /// Crafting isn't possible because one of the gifts isn't suitable for crafting
    case craftGiftResultInvalidGift

    /// Crafting has failed
    case craftGiftResultFail


    private enum Kind: String, Codable {
        case craftGiftResultSuccess
        case craftGiftResultTooEarly
        case craftGiftResultInvalidGift
        case craftGiftResultFail
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .craftGiftResultSuccess:
            let value = try CraftGiftResultSuccess(from: decoder)
            self = .craftGiftResultSuccess(value)
        case .craftGiftResultTooEarly:
            let value = try CraftGiftResultTooEarly(from: decoder)
            self = .craftGiftResultTooEarly(value)
        case .craftGiftResultInvalidGift:
            self = .craftGiftResultInvalidGift
        case .craftGiftResultFail:
            self = .craftGiftResultFail
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .craftGiftResultSuccess(let value):
            try container.encode(Kind.craftGiftResultSuccess, forKey: .type)
            try value.encode(to: encoder)
        case .craftGiftResultTooEarly(let value):
            try container.encode(Kind.craftGiftResultTooEarly, forKey: .type)
            try value.encode(to: encoder)
        case .craftGiftResultInvalidGift:
            try container.encode(Kind.craftGiftResultInvalidGift, forKey: .type)
        case .craftGiftResultFail:
            try container.encode(Kind.craftGiftResultFail, forKey: .type)
        }
    }
}

/// Crafting was successful
public struct CraftGiftResultSuccess: Codable, Equatable, Hashable {

    /// The created gift
    public let gift: UpgradedGift

    /// Unique identifier of the received gift for the current user
    public let receivedGiftId: String


    public init(
        gift: UpgradedGift,
        receivedGiftId: String
    ) {
        self.gift = gift
        self.receivedGiftId = receivedGiftId
    }
}

/// Crafting isn't possible because one of the gifts can't be used for crafting yet
public struct CraftGiftResultTooEarly: Codable, Equatable, Hashable {

    /// Time left before the gift can be used for crafting
    public let retryAfter: Int


    public init(retryAfter: Int) {
        self.retryAfter = retryAfter
    }
}

