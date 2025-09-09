//
//  SuggestedPostPrice.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.53-bdec6af5
//  https://github.com/tdlib/td/tree/bdec6af5
//

import Foundation


/// Describes price of a suggested post
public indirect enum SuggestedPostPrice: Codable, Equatable, Hashable {

    /// Describes price of a suggested post in Telegram Stars
    case suggestedPostPriceStar(SuggestedPostPriceStar)

    /// Describes price of a suggested post in Toncoins
    case suggestedPostPriceTon(SuggestedPostPriceTon)


    private enum Kind: String, Codable {
        case suggestedPostPriceStar
        case suggestedPostPriceTon
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .suggestedPostPriceStar:
            let value = try SuggestedPostPriceStar(from: decoder)
            self = .suggestedPostPriceStar(value)
        case .suggestedPostPriceTon:
            let value = try SuggestedPostPriceTon(from: decoder)
            self = .suggestedPostPriceTon(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .suggestedPostPriceStar(let value):
            try container.encode(Kind.suggestedPostPriceStar, forKey: .type)
            try value.encode(to: encoder)
        case .suggestedPostPriceTon(let value):
            try container.encode(Kind.suggestedPostPriceTon, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Describes price of a suggested post in Telegram Stars
public struct SuggestedPostPriceStar: Codable, Equatable, Hashable {

    /// The amount of Telegram Stars expected to be paid for the post; getOption("suggested_post_star_count_min")-getOption("suggested_post_star_count_max")
    public let starCount: Int64


    public init(starCount: Int64) {
        self.starCount = starCount
    }
}

/// Describes price of a suggested post in Toncoins
public struct SuggestedPostPriceTon: Codable, Equatable, Hashable {

    /// The amount of 1/100 of Toncoin expected to be paid for the post; getOption("suggested_post_toncoin_cent_count_min")-getOption("suggested_post_toncoin_cent_count_max")
    public let toncoinCentCount: Int64


    public init(toncoinCentCount: Int64) {
        self.toncoinCentCount = toncoinCentCount
    }
}

