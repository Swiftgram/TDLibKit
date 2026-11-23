//
//  GiftOnchainPurchaseOfferState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
//

import Foundation


/// Describes state of an on-chain gift purchase offer
public indirect enum GiftOnchainPurchaseOfferState: Codable, Equatable, Hashable {

    /// The offer is waiting for a response from the owner of the gift
    case giftOnchainPurchaseOfferStatePending

    /// The offer was accepted and executed on the TON blockchain; the gift is being transferred to the buyer
    case giftOnchainPurchaseOfferStateSettled

    /// The offer was accepted and the gift was transferred to the TON wallet of the buyer
    case giftOnchainPurchaseOfferStateAccepted

    /// The offer is being canceled and the buyer is being refunded
    case giftOnchainPurchaseOfferStateCanceling

    /// The offer was declined
    case giftOnchainPurchaseOfferStateDeclined(GiftOnchainPurchaseOfferStateDeclined)

    /// The offer was canceled
    case giftOnchainPurchaseOfferStateCanceled(GiftOnchainPurchaseOfferStateCanceled)

    /// The offer has expired and the buyer was refunded
    case giftOnchainPurchaseOfferStateExpired(GiftOnchainPurchaseOfferStateExpired)


    private enum Kind: String, Codable {
        case giftOnchainPurchaseOfferStatePending
        case giftOnchainPurchaseOfferStateSettled
        case giftOnchainPurchaseOfferStateAccepted
        case giftOnchainPurchaseOfferStateCanceling
        case giftOnchainPurchaseOfferStateDeclined
        case giftOnchainPurchaseOfferStateCanceled
        case giftOnchainPurchaseOfferStateExpired
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .giftOnchainPurchaseOfferStatePending:
            self = .giftOnchainPurchaseOfferStatePending
        case .giftOnchainPurchaseOfferStateSettled:
            self = .giftOnchainPurchaseOfferStateSettled
        case .giftOnchainPurchaseOfferStateAccepted:
            self = .giftOnchainPurchaseOfferStateAccepted
        case .giftOnchainPurchaseOfferStateCanceling:
            self = .giftOnchainPurchaseOfferStateCanceling
        case .giftOnchainPurchaseOfferStateDeclined:
            let value = try GiftOnchainPurchaseOfferStateDeclined(from: decoder)
            self = .giftOnchainPurchaseOfferStateDeclined(value)
        case .giftOnchainPurchaseOfferStateCanceled:
            let value = try GiftOnchainPurchaseOfferStateCanceled(from: decoder)
            self = .giftOnchainPurchaseOfferStateCanceled(value)
        case .giftOnchainPurchaseOfferStateExpired:
            let value = try GiftOnchainPurchaseOfferStateExpired(from: decoder)
            self = .giftOnchainPurchaseOfferStateExpired(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .giftOnchainPurchaseOfferStatePending:
            try container.encode(Kind.giftOnchainPurchaseOfferStatePending, forKey: .type)
        case .giftOnchainPurchaseOfferStateSettled:
            try container.encode(Kind.giftOnchainPurchaseOfferStateSettled, forKey: .type)
        case .giftOnchainPurchaseOfferStateAccepted:
            try container.encode(Kind.giftOnchainPurchaseOfferStateAccepted, forKey: .type)
        case .giftOnchainPurchaseOfferStateCanceling:
            try container.encode(Kind.giftOnchainPurchaseOfferStateCanceling, forKey: .type)
        case .giftOnchainPurchaseOfferStateDeclined(let value):
            try container.encode(Kind.giftOnchainPurchaseOfferStateDeclined, forKey: .type)
            try value.encode(to: encoder)
        case .giftOnchainPurchaseOfferStateCanceled(let value):
            try container.encode(Kind.giftOnchainPurchaseOfferStateCanceled, forKey: .type)
            try value.encode(to: encoder)
        case .giftOnchainPurchaseOfferStateExpired(let value):
            try container.encode(Kind.giftOnchainPurchaseOfferStateExpired, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The offer was declined
public struct GiftOnchainPurchaseOfferStateDeclined: Codable, Equatable, Hashable {

    /// The amount returned to the buyer, in the smallest units of TON Grams; -1 if unknown
    public let refundAmount: TdInt64


    public init(refundAmount: TdInt64) {
        self.refundAmount = refundAmount
    }
}

/// The offer was canceled
public struct GiftOnchainPurchaseOfferStateCanceled: Codable, Equatable, Hashable {

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
public struct GiftOnchainPurchaseOfferStateExpired: Codable, Equatable, Hashable {

    /// The amount returned to the buyer, in the smallest units of TON Grams; -1 if unknown
    public let refundAmount: TdInt64


    public init(refundAmount: TdInt64) {
        self.refundAmount = refundAmount
    }
}

