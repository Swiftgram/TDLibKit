//
//  GiftResalePrice.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
//

import Foundation


/// Describes price of a resold gift
public indirect enum GiftResalePrice: Codable, Equatable, Hashable {

    /// Describes price of a resold gift in Telegram Stars
    case giftResalePriceStar(GiftResalePriceStar)

    /// Describes price of a resold gift in Toncoins
    case giftResalePriceTon(GiftResalePriceTon)


    private enum Kind: String, Codable {
        case giftResalePriceStar
        case giftResalePriceTon
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .giftResalePriceStar:
            let value = try GiftResalePriceStar(from: decoder)
            self = .giftResalePriceStar(value)
        case .giftResalePriceTon:
            let value = try GiftResalePriceTon(from: decoder)
            self = .giftResalePriceTon(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .giftResalePriceStar(let value):
            try container.encode(Kind.giftResalePriceStar, forKey: .type)
            try value.encode(to: encoder)
        case .giftResalePriceTon(let value):
            try container.encode(Kind.giftResalePriceTon, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Describes price of a resold gift in Telegram Stars
public struct GiftResalePriceStar: Codable, Equatable, Hashable {

    /// The amount of Telegram Stars expected to be paid for the gift. Must be in range getOption("gift_resale_star_count_min")-getOption("gift_resale_star_count_max") for gifts put for resale
    public let starCount: Int64


    public init(starCount: Int64) {
        self.starCount = starCount
    }
}

/// Describes price of a resold gift in Toncoins
public struct GiftResalePriceTon: Codable, Equatable, Hashable {

    /// The amount of 1/100 of Toncoin expected to be paid for the gift. Must be in range getOption("gift_resale_toncoin_cent_count_min")-getOption("gift_resale_toncoin_cent_count_max")
    public let toncoinCentCount: Int64


    public init(toncoinCentCount: Int64) {
        self.toncoinCentCount = toncoinCentCount
    }
}

