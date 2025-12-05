//
//  GiftResaleResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Describes result of sending a resold gift
public indirect enum GiftResaleResult: Codable, Equatable, Hashable {

    /// Operation was successfully completed
    case giftResaleResultOk

    /// Operation has failed, because price has increased. If the price has decreased, then the buying will succeed anyway
    case giftResaleResultPriceIncreased(GiftResaleResultPriceIncreased)


    private enum Kind: String, Codable {
        case giftResaleResultOk
        case giftResaleResultPriceIncreased
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .giftResaleResultOk:
            self = .giftResaleResultOk
        case .giftResaleResultPriceIncreased:
            let value = try GiftResaleResultPriceIncreased(from: decoder)
            self = .giftResaleResultPriceIncreased(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .giftResaleResultOk:
            try container.encode(Kind.giftResaleResultOk, forKey: .type)
        case .giftResaleResultPriceIncreased(let value):
            try container.encode(Kind.giftResaleResultPriceIncreased, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Operation has failed, because price has increased. If the price has decreased, then the buying will succeed anyway
public struct GiftResaleResultPriceIncreased: Codable, Equatable, Hashable {

    /// New price for the gift
    public let price: GiftResalePrice


    public init(price: GiftResalePrice) {
        self.price = price
    }
}

