//
//  GiftOnChainPurchaseOfferState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Describes state of an on-chain gift purchase offer
public indirect enum GiftOnChainPurchaseOfferState: Codable, Equatable, Hashable {

    /// The offer is waiting for a response from the owner of the gift
    case giftOnChainPurchaseOfferStatePending

    /// The offer was accepted and executed on the TON blockchain; the gift is being transferred to the buyer
    case giftOnChainPurchaseOfferStateSettled

    /// The offer was accepted and the gift was transferred to the TON wallet of the buyer
    case giftOnChainPurchaseOfferStateAccepted

    /// The offer is being canceled and the buyer is being refunded
    case giftOnChainPurchaseOfferStateCanceling

    /// The offer was declined
    case giftOnChainPurchaseOfferStateDeclined(GiftOnChainPurchaseOfferStateDeclined)

    /// The offer was canceled
    case giftOnChainPurchaseOfferStateCanceled(GiftOnChainPurchaseOfferStateCanceled)

    /// The offer has expired and the buyer was refunded
    case giftOnChainPurchaseOfferStateExpired(GiftOnChainPurchaseOfferStateExpired)


    private enum Kind: String, Codable {
        case giftOnChainPurchaseOfferStatePending
        case giftOnChainPurchaseOfferStateSettled
        case giftOnChainPurchaseOfferStateAccepted
        case giftOnChainPurchaseOfferStateCanceling
        case giftOnChainPurchaseOfferStateDeclined
        case giftOnChainPurchaseOfferStateCanceled
        case giftOnChainPurchaseOfferStateExpired
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .giftOnChainPurchaseOfferStatePending:
            self = .giftOnChainPurchaseOfferStatePending
        case .giftOnChainPurchaseOfferStateSettled:
            self = .giftOnChainPurchaseOfferStateSettled
        case .giftOnChainPurchaseOfferStateAccepted:
            self = .giftOnChainPurchaseOfferStateAccepted
        case .giftOnChainPurchaseOfferStateCanceling:
            self = .giftOnChainPurchaseOfferStateCanceling
        case .giftOnChainPurchaseOfferStateDeclined:
            let value = try GiftOnChainPurchaseOfferStateDeclined(from: decoder)
            self = .giftOnChainPurchaseOfferStateDeclined(value)
        case .giftOnChainPurchaseOfferStateCanceled:
            let value = try GiftOnChainPurchaseOfferStateCanceled(from: decoder)
            self = .giftOnChainPurchaseOfferStateCanceled(value)
        case .giftOnChainPurchaseOfferStateExpired:
            let value = try GiftOnChainPurchaseOfferStateExpired(from: decoder)
            self = .giftOnChainPurchaseOfferStateExpired(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .giftOnChainPurchaseOfferStatePending:
            try container.encode(Kind.giftOnChainPurchaseOfferStatePending, forKey: .type)
        case .giftOnChainPurchaseOfferStateSettled:
            try container.encode(Kind.giftOnChainPurchaseOfferStateSettled, forKey: .type)
        case .giftOnChainPurchaseOfferStateAccepted:
            try container.encode(Kind.giftOnChainPurchaseOfferStateAccepted, forKey: .type)
        case .giftOnChainPurchaseOfferStateCanceling:
            try container.encode(Kind.giftOnChainPurchaseOfferStateCanceling, forKey: .type)
        case .giftOnChainPurchaseOfferStateDeclined(let value):
            try container.encode(Kind.giftOnChainPurchaseOfferStateDeclined, forKey: .type)
            try value.encode(to: encoder)
        case .giftOnChainPurchaseOfferStateCanceled(let value):
            try container.encode(Kind.giftOnChainPurchaseOfferStateCanceled, forKey: .type)
            try value.encode(to: encoder)
        case .giftOnChainPurchaseOfferStateExpired(let value):
            try container.encode(Kind.giftOnChainPurchaseOfferStateExpired, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The offer was declined
public struct GiftOnChainPurchaseOfferStateDeclined: Codable, Equatable, Hashable {

    /// The amount returned to the buyer, in the smallest units of TON Grams; -1 if unknown
    public let refundAmount: TdInt64


    public init(refundAmount: TdInt64) {
        self.refundAmount = refundAmount
    }
}

/// The offer was canceled
public struct GiftOnChainPurchaseOfferStateCanceled: Codable, Equatable, Hashable {

    /// The fine for the cancellation of the offer, in the smallest units of TON Grams; -1 if unknown
    public let fineAmount: TdInt64

    /// The amount returned to the buyer, in the smallest units of TON Grams; -1 if unknown
    public let refundAmount: TdInt64


    public init(
        fineAmount: TdInt64,
        refundAmount: TdInt64
    ) {
        self.fineAmount = fineAmount
        self.refundAmount = refundAmount
    }
}

/// The offer has expired and the buyer was refunded
public struct GiftOnChainPurchaseOfferStateExpired: Codable, Equatable, Hashable {

    /// The amount returned to the buyer, in the smallest units of TON Grams; -1 if unknown
    public let refundAmount: TdInt64


    public init(refundAmount: TdInt64) {
        self.refundAmount = refundAmount
    }
}

