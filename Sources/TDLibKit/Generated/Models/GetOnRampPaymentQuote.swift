//
//  GetOnRampPaymentQuote.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-f381f4b3
//  https://github.com/tdlib/td/tree/f381f4b3
//

import Foundation


/// Returns a quote for an on-ramp payment; only for providers that supports quote retrieval
public struct GetOnRampPaymentQuote: Codable, Equatable, Hashable {

    /// ISO 4217 currency code of the currency that will be used for the purchase
    public let baseCurrency: String?

    /// The amount of the base currency to spend; pass an empty string if the user selected cryptocurrency_amount
    public let baseCurrencyAmount: String?

    /// The cryptocurrency that will be bought
    public let cryptocurrency: String?

    /// The amount of the cryptocurrency to buy; pass an empty string if the user selected base_currency_amount
    public let cryptocurrencyAmount: String?

    /// Name of the chosen payment method; pass an empty string if none
    public let paymentMethodName: String?

    /// Unique identifier of the on-ramp provider
    public let providerId: String?


    public init(
        baseCurrency: String?,
        baseCurrencyAmount: String?,
        cryptocurrency: String?,
        cryptocurrencyAmount: String?,
        paymentMethodName: String?,
        providerId: String?
    ) {
        self.baseCurrency = baseCurrency
        self.baseCurrencyAmount = baseCurrencyAmount
        self.cryptocurrency = cryptocurrency
        self.cryptocurrencyAmount = cryptocurrencyAmount
        self.paymentMethodName = paymentMethodName
        self.providerId = providerId
    }
}

