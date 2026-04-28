//
//  GiftResaleResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8fc2344f
//  https://github.com/tdlib/td/tree/8fc2344f
//

import Foundation


/// Describes result of sending a resold gift
public indirect enum GiftResaleResult: Codable, Equatable, Hashable {

    /// Operation was successfully completed
    case giftResaleResultOk(GiftResaleResultOk)

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
            let value = try GiftResaleResultOk(from: decoder)
            self = .giftResaleResultOk(value)
        case .giftResaleResultPriceIncreased:
            let value = try GiftResaleResultPriceIncreased(from: decoder)
            self = .giftResaleResultPriceIncreased(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .giftResaleResultOk(let value):
            try container.encode(Kind.giftResaleResultOk, forKey: .type)
            try value.encode(to: encoder)
        case .giftResaleResultPriceIncreased(let value):
            try container.encode(Kind.giftResaleResultPriceIncreased, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Operation was successfully completed
public struct GiftResaleResultOk: Codable, Equatable, Hashable {

    /// Unique identifier of the received gift; only for the gifts sent to the current user
    public let receivedGiftId: String


    public init(receivedGiftId: String) {
        self.receivedGiftId = receivedGiftId
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

