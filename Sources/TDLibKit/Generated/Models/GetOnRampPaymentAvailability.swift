//
//  GetOnRampPaymentAvailability.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-18c8f7a0
//  https://github.com/tdlib/td/tree/18c8f7a0
//

import Foundation


/// Returns the available on-ramp payment methods based on the current user location
public struct GetOnRampPaymentAvailability: Codable, Equatable, Hashable {

    /// ISO 4217 currency code of the currency that will be used for the purchase; pass an empty string if unknown
    public let baseCurrency: String?

    /// The cryptocurrency that will be bought
    public let cryptocurrency: String?

    /// Unique identifier of the on-ramp provider
    public let providerId: String?


    public init(
        baseCurrency: String?,
        cryptocurrency: String?,
        providerId: String?
    ) {
        self.baseCurrency = baseCurrency
        self.cryptocurrency = cryptocurrency
        self.providerId = providerId
    }
}

