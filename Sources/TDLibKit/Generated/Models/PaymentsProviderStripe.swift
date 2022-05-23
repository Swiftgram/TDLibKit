//
//  PaymentsProviderStripe.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-c2a580bb
//  https://github.com/tdlib/td/tree/c2a580bb
//

import Foundation


/// Stripe payment provider
public struct PaymentsProviderStripe: Codable, Equatable {

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

