//
//  OnRampPaymentQuote.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-4a85043f
//  https://github.com/tdlib/td/tree/4a85043f
//

import Foundation


/// Describes a quote for an on-ramp purchase
public struct OnRampPaymentQuote: Codable, Equatable, Hashable {

    /// Paid amount of the base currency
    public let baseCurrencyAmount: String

    /// Purchased amount of the cryptocurrency
    public let cryptocurrencyAmount: String

    /// The price of the cryptocurrency
    public let cryptocurrencyPrice: String

    /// Point in time (Unix timestamp) when the quote will expire
    public let expirationDate: Int

    /// Extra fee amount
    public let extraFeeAmount: String

    /// Fee amount
    public let feeAmount: String

    /// Network fee amount
    public let networkFeeAmount: String

    /// The payment method to be used
    public let paymentMethod: String

    /// Total paid amount
    public let totalAmount: String


    public init(
        baseCurrencyAmount: String,
        cryptocurrencyAmount: String,
        cryptocurrencyPrice: String,
        expirationDate: Int,
        extraFeeAmount: String,
        feeAmount: String,
        networkFeeAmount: String,
        paymentMethod: String,
        totalAmount: String
    ) {
        self.baseCurrencyAmount = baseCurrencyAmount
        self.cryptocurrencyAmount = cryptocurrencyAmount
        self.cryptocurrencyPrice = cryptocurrencyPrice
        self.expirationDate = expirationDate
        self.extraFeeAmount = extraFeeAmount
        self.feeAmount = feeAmount
        self.networkFeeAmount = networkFeeAmount
        self.paymentMethod = paymentMethod
        self.totalAmount = totalAmount
    }
}

