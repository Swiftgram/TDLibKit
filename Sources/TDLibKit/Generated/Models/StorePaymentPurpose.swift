//
//  StorePaymentPurpose.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.9-e531ae2e
//  https://github.com/tdlib/td/tree/e531ae2e
//

import Foundation


/// Describes a purpose of an in-store payment
public enum StorePaymentPurpose: Codable, Equatable {

    /// The user subscribed to Telegram Premium
    case storePaymentPurposePremiumSubscription(StorePaymentPurposePremiumSubscription)

    /// The user gifted Telegram Premium to another user
    case storePaymentPurposeGiftedPremium(StorePaymentPurposeGiftedPremium)


    private enum Kind: String, Codable {
        case storePaymentPurposePremiumSubscription
        case storePaymentPurposeGiftedPremium
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .storePaymentPurposePremiumSubscription:
            let value = try StorePaymentPurposePremiumSubscription(from: decoder)
            self = .storePaymentPurposePremiumSubscription(value)
        case .storePaymentPurposeGiftedPremium:
            let value = try StorePaymentPurposeGiftedPremium(from: decoder)
            self = .storePaymentPurposeGiftedPremium(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .storePaymentPurposePremiumSubscription(let value):
            try container.encode(Kind.storePaymentPurposePremiumSubscription, forKey: .type)
            try value.encode(to: encoder)
        case .storePaymentPurposeGiftedPremium(let value):
            try container.encode(Kind.storePaymentPurposeGiftedPremium, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The user subscribed to Telegram Premium
public struct StorePaymentPurposePremiumSubscription: Codable, Equatable {

    /// Pass true if this is a restore of a Telegram Premium purchase; only for App Store
    public let isRestore: Bool


    public init(isRestore: Bool) {
        self.isRestore = isRestore
    }
}

/// The user gifted Telegram Premium to another user
public struct StorePaymentPurposeGiftedPremium: Codable, Equatable {

    /// Paid amount, in the smallest units of the currency
    public let amount: Int64

    /// ISO 4217 currency code of the payment currency
    public let currency: String

    /// Identifier of the user for which Premium was gifted
    public let userId: Int64


    public init(
        amount: Int64,
        currency: String,
        userId: Int64
    ) {
        self.amount = amount
        self.currency = currency
        self.userId = userId
    }
}

