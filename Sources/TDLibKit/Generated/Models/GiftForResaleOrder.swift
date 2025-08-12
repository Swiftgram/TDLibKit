//
//  GiftForResaleOrder.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-bc32c4b2
//  https://github.com/tdlib/td/tree/bc32c4b2
//

import Foundation


/// Describes order in which upgraded gifts for resale will be sorted
public indirect enum GiftForResaleOrder: Codable, Equatable, Hashable {

    /// The gifts will be sorted by their price from the lowest to the highest
    case giftForResaleOrderPrice

    /// The gifts will be sorted by the last date when their price was changed from the newest to the oldest
    case giftForResaleOrderPriceChangeDate

    /// The gifts will be sorted by their number from the smallest to the largest
    case giftForResaleOrderNumber


    private enum Kind: String, Codable {
        case giftForResaleOrderPrice
        case giftForResaleOrderPriceChangeDate
        case giftForResaleOrderNumber
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .giftForResaleOrderPrice:
            self = .giftForResaleOrderPrice
        case .giftForResaleOrderPriceChangeDate:
            self = .giftForResaleOrderPriceChangeDate
        case .giftForResaleOrderNumber:
            self = .giftForResaleOrderNumber
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .giftForResaleOrderPrice:
            try container.encode(Kind.giftForResaleOrderPrice, forKey: .type)
        case .giftForResaleOrderPriceChangeDate:
            try container.encode(Kind.giftForResaleOrderPriceChangeDate, forKey: .type)
        case .giftForResaleOrderNumber:
            try container.encode(Kind.giftForResaleOrderNumber, forKey: .type)
        }
    }
}

