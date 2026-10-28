//
//  CurrencyExchangeRate.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-fb464979
//  https://github.com/tdlib/td/tree/fb464979
//

import Foundation


/// Describes exchange rate of a currency to USD
public struct CurrencyExchangeRate: Codable, Equatable, Hashable {

    /// ISO 4217 currency code of the payment currency
    public let currency: String

    /// Exchange rate of the currency to USD
    public let rate: Double


    public init(
        currency: String,
        rate: Double
    ) {
        self.currency = currency
        self.rate = rate
    }
}

