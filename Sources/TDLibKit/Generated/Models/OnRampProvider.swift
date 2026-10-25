//
//  OnRampProvider.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-025086e3
//  https://github.com/tdlib/td/tree/025086e3
//

import Foundation


/// Describes an on-ramp provider
public struct OnRampProvider: Codable, Equatable, Hashable, Identifiable {

    /// List of cryptocurrencies supported by the provider
    public let cryptocurrencies: [String]

    /// Unique identifier of the provider
    public let id: String

    /// Name of the provider
    public let name: String

    /// True, if the provider supports base currencies and can be used in the method getOnRampProviderBaseCurrencies
    public let supportsBaseCurrencies: Bool

    /// True, if the provider supports limits retrieval using the method getOnRampPaymentLimits
    public let supportsLimits: Bool

    /// True, if the provider supports quote retrieval using the method getOnRampPaymentQuote
    public let supportsQuote: Bool


    public init(
        cryptocurrencies: [String],
        id: String,
        name: String,
        supportsBaseCurrencies: Bool,
        supportsLimits: Bool,
        supportsQuote: Bool
    ) {
        self.cryptocurrencies = cryptocurrencies
        self.id = id
        self.name = name
        self.supportsBaseCurrencies = supportsBaseCurrencies
        self.supportsLimits = supportsLimits
        self.supportsQuote = supportsQuote
    }
}

