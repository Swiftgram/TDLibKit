//
//  GetOnRampPaymentLimits.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-0e88653d
//  https://github.com/tdlib/td/tree/0e88653d
//

import Foundation


/// Returns the limits for an on-ramp payment; only for providers that support limits retrieval
public struct GetOnRampPaymentLimits: Codable, Equatable, Hashable {

    /// ISO 4217 currency code of the currency that will be used for the purchase
    public let baseCurrency: String?

    /// The cryptocurrency that will be bought
    public let cryptocurrency: String?

    /// Name of the chosen payment method; pass an empty string if none
    public let paymentMethodName: String?

    /// Unique identifier of the on-ramp provider
    public let providerId: String?


    public init(
        baseCurrency: String?,
        cryptocurrency: String?,
        paymentMethodName: String?,
        providerId: String?
    ) {
        self.baseCurrency = baseCurrency
        self.cryptocurrency = cryptocurrency
        self.paymentMethodName = paymentMethodName
        self.providerId = providerId
    }
}

