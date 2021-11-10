//
//  PaymentsProviderStripe.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4f1e5db8
//  https://github.com/tdlib/td/tree/4f1e5db8
//

import Foundation


/// Stripe payment provider
public struct PaymentsProviderStripe: Codable {

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

