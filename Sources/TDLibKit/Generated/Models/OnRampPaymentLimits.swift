//
//  OnRampPaymentLimits.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-5f9312dc
//  https://github.com/tdlib/td/tree/5f9312dc
//

import Foundation


/// Describes limits for an on-ramp purchase
public struct OnRampPaymentLimits: Codable, Equatable, Hashable {

    /// The maximum allowed amount of the base currency
    public let baseCurrencyMaxAmount: String

    /// The minimum allowed amount of the base currency
    public let baseCurrencyMinAmount: String

    /// The maximum allowed amount of the bought cryptocurrency
    public let cryptocurrencyMaxAmount: String

    /// The minimum allowed amount of the bought cryptocurrency
    public let cryptocurrencyMinAmount: String

    /// The payment method to be used
    public let paymentMethod: String


    public init(
        baseCurrencyMaxAmount: String,
        baseCurrencyMinAmount: String,
        cryptocurrencyMaxAmount: String,
        cryptocurrencyMinAmount: String,
        paymentMethod: String
    ) {
        self.baseCurrencyMaxAmount = baseCurrencyMaxAmount
        self.baseCurrencyMinAmount = baseCurrencyMinAmount
        self.cryptocurrencyMaxAmount = cryptocurrencyMaxAmount
        self.cryptocurrencyMinAmount = cryptocurrencyMinAmount
        self.paymentMethod = paymentMethod
    }
}

