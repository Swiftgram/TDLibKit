//
//  GiftPurchaseOfferState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Describes state of a gift purchase offer
public indirect enum GiftPurchaseOfferState: Codable, Equatable, Hashable {

    /// The offer must be accepted or rejected
    case giftPurchaseOfferStatePending

    /// The offer was accepted
    case giftPurchaseOfferStateAccepted

    /// The offer was rejected
    case giftPurchaseOfferStateRejected


    private enum Kind: String, Codable {
        case giftPurchaseOfferStatePending
        case giftPurchaseOfferStateAccepted
        case giftPurchaseOfferStateRejected
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .giftPurchaseOfferStatePending:
            self = .giftPurchaseOfferStatePending
        case .giftPurchaseOfferStateAccepted:
            self = .giftPurchaseOfferStateAccepted
        case .giftPurchaseOfferStateRejected:
            self = .giftPurchaseOfferStateRejected
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .giftPurchaseOfferStatePending:
            try container.encode(Kind.giftPurchaseOfferStatePending, forKey: .type)
        case .giftPurchaseOfferStateAccepted:
            try container.encode(Kind.giftPurchaseOfferStateAccepted, forKey: .type)
        case .giftPurchaseOfferStateRejected:
            try container.encode(Kind.giftPurchaseOfferStateRejected, forKey: .type)
        }
    }
}

