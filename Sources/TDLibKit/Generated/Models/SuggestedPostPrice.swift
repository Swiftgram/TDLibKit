//
//  SuggestedPostPrice.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-d8d46dfa
//  https://github.com/tdlib/td/tree/d8d46dfa
//

import Foundation


/// Describes price of a suggested post
public indirect enum SuggestedPostPrice: Codable, Equatable, Hashable {

    /// Describes price of a suggested post in Telegram Stars
    case suggestedPostPriceStar(SuggestedPostPriceStar)

    /// Describes price of a suggested post in TON Grams
    case suggestedPostPriceGram(SuggestedPostPriceGram)


    private enum Kind: String, Codable {
        case suggestedPostPriceStar
        case suggestedPostPriceGram
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .suggestedPostPriceStar:
            let value = try SuggestedPostPriceStar(from: decoder)
            self = .suggestedPostPriceStar(value)
        case .suggestedPostPriceGram:
            let value = try SuggestedPostPriceGram(from: decoder)
            self = .suggestedPostPriceGram(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .suggestedPostPriceStar(let value):
            try container.encode(Kind.suggestedPostPriceStar, forKey: .type)
            try value.encode(to: encoder)
        case .suggestedPostPriceGram(let value):
            try container.encode(Kind.suggestedPostPriceGram, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Describes price of a suggested post in Telegram Stars
public struct SuggestedPostPriceStar: Codable, Equatable, Hashable {

    /// The Telegram Star amount expected to be paid for the post; getOption("suggested_post_star_count_min")-getOption("suggested_post_star_count_max")
    public let starCount: Int64


    public init(starCount: Int64) {
        self.starCount = starCount
    }
}

/// Describes price of a suggested post in TON Grams
public struct SuggestedPostPriceGram: Codable, Equatable, Hashable {

    /// The amount of 1/100 of Gram expected to be paid for the post; getOption("suggested_post_gram_cent_count_min")-getOption("suggested_post_gram_cent_count_max")
    public let gramCentCount: Int64


    public init(gramCentCount: Int64) {
        self.gramCentCount = gramCentCount
    }
}

