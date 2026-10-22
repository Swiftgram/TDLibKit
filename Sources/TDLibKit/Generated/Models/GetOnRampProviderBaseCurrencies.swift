//
//  GetOnRampProviderBaseCurrencies.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-7601cdfb
//  https://github.com/tdlib/td/tree/7601cdfb
//

import Foundation


/// Returns the list of fiat currencies supported by an on-ramp provider for the given cryptocurrency
public struct GetOnRampProviderBaseCurrencies: Codable, Equatable, Hashable {

    /// The cryptocurrency that will be bought
    public let cryptocurrency: String?

    /// Unique identifier of the on-ramp provider; only for providers that support base currencies
    public let providerId: String?


    public init(
        cryptocurrency: String?,
        providerId: String?
    ) {
        self.cryptocurrency = cryptocurrency
        self.providerId = providerId
    }
}

