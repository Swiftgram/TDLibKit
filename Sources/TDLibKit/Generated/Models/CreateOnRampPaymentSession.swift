//
//  CreateOnRampPaymentSession.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-5a18feeb
//  https://github.com/tdlib/td/tree/5a18feeb
//

import Foundation


/// Creates a session for an on-ramp payment
public struct CreateOnRampPaymentSession: Codable, Equatable, Hashable {

    /// Address to which the cryptocurrency will be sent
    public let address: String?

    /// ISO 4217 currency code of the currency that will be used for the purchase; pass an empty string if unknown
    public let baseCurrency: String?

    /// The amount of the base currency to spend; pass an empty string if the user selected cryptocurrency_amount
    public let baseCurrencyAmount: String?

    /// The cryptocurrency that will be bought
    public let cryptocurrency: String?

    /// The amount of the cryptocurrency to buy; pass an empty string if the user selected base_currency_amount
    public let cryptocurrencyAmount: String?

    /// The URL opened on failed payment; pass an empty string if none
    public let failReturnUrl: String?

    /// Memo for the query; pass an empty string if none
    public let memo: String?

    /// Name of the chosen payment method; pass an empty string if none
    public let paymentMethodName: String?

    /// Unique identifier of the on-ramp provider
    public let providerId: String?

    /// The URL opened on successful payment; pass an empty string if none
    public let successReturnUrl: String?

    /// Preferred theme for the WebView; pass "light" for a light theme, "dark" for a dark theme, or leave empty for a default theme
    public let theme: String?


    public init(
        address: String?,
        baseCurrency: String?,
        baseCurrencyAmount: String?,
        cryptocurrency: String?,
        cryptocurrencyAmount: String?,
        failReturnUrl: String?,
        memo: String?,
        paymentMethodName: String?,
        providerId: String?,
        successReturnUrl: String?,
        theme: String?
    ) {
        self.address = address
        self.baseCurrency = baseCurrency
        self.baseCurrencyAmount = baseCurrencyAmount
        self.cryptocurrency = cryptocurrency
        self.cryptocurrencyAmount = cryptocurrencyAmount
        self.failReturnUrl = failReturnUrl
        self.memo = memo
        self.paymentMethodName = paymentMethodName
        self.providerId = providerId
        self.successReturnUrl = successReturnUrl
        self.theme = theme
    }
}

