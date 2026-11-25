//
//  OnRampPaymentLimits.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
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

