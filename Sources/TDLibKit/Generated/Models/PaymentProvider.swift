//
//  PaymentProvider.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about a payment provider
public indirect enum PaymentProvider: Codable, Equatable, Hashable {

    /// Smart Glocal payment provider
    case paymentProviderSmartGlocal(PaymentProviderSmartGlocal)

    /// Stripe payment provider
    case paymentProviderStripe(PaymentProviderStripe)

    /// Some other payment provider, for which a web payment form must be shown
    case paymentProviderOther(PaymentProviderOther)


    private enum Kind: String, Codable {
        case paymentProviderSmartGlocal
        case paymentProviderStripe
        case paymentProviderOther
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .paymentProviderSmartGlocal:
            let value = try PaymentProviderSmartGlocal(from: decoder)
            self = .paymentProviderSmartGlocal(value)
        case .paymentProviderStripe:
            let value = try PaymentProviderStripe(from: decoder)
            self = .paymentProviderStripe(value)
        case .paymentProviderOther:
            let value = try PaymentProviderOther(from: decoder)
            self = .paymentProviderOther(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .paymentProviderSmartGlocal(let value):
            try container.encode(Kind.paymentProviderSmartGlocal, forKey: .type)
            try value.encode(to: encoder)
        case .paymentProviderStripe(let value):
            try container.encode(Kind.paymentProviderStripe, forKey: .type)
            try value.encode(to: encoder)
        case .paymentProviderOther(let value):
            try container.encode(Kind.paymentProviderOther, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Smart Glocal payment provider
public struct PaymentProviderSmartGlocal: Codable, Equatable, Hashable {

    /// Public payment token
    public let publicToken: String

    /// URL for sending card tokenization requests
    public let tokenizeUrl: String


    public init(
        publicToken: String,
        tokenizeUrl: String
    ) {
        self.publicToken = publicToken
        self.tokenizeUrl = tokenizeUrl
    }
}

/// Stripe payment provider
public struct PaymentProviderStripe: Codable, Equatable, Hashable {

    /// True, if the cardholder name must be provided
    public let needCardholderName: Bool

    /// True, if the user country must be provided
    public let needCountry: Bool

    /// True, if the user ZIP/postal code must be provided
    public let needPostalCode: Bool

    /// Stripe API publishable key
    public let publishableKey: String


    public init(
        needCardholderName: Bool,
        needCountry: Bool,
        needPostalCode: Bool,
        publishableKey: String
    ) {
        self.needCardholderName = needCardholderName
        self.needCountry = needCountry
        self.needPostalCode = needPostalCode
        self.publishableKey = publishableKey
    }
}

/// Some other payment provider, for which a web payment form must be shown
public struct PaymentProviderOther: Codable, Equatable, Hashable {

    /// Payment form URL
    public let url: String


    public init(url: String) {
        self.url = url
    }
}

