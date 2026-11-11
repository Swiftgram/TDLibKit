//
//  CurrencyExchangeRates.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-1f390d90
//  https://github.com/tdlib/td/tree/1f390d90
//

import Foundation


/// Represents a list of currency exchange rates
public struct CurrencyExchangeRates: Codable, Equatable, Hashable {

    /// A list of currency exchange rates
    public let rates: [CurrencyExchangeRate]


    public init(rates: [CurrencyExchangeRate]) {
        self.rates = rates
    }
}

