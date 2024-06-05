//
//  StarPaymentOption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-b102c3ad
//  https://github.com/tdlib/td/tree/b102c3ad
//

import Foundation


/// Describes an option for buying Telegram stars
public struct StarPaymentOption: Codable, Equatable, Hashable {

    /// The amount to pay, in the smallest units of the currency
    public let amount: Int64

    /// ISO 4217 currency code for the payment
    public let currency: String

    /// True, if the option must be shown only in the full list of payment options
    public let isAdditional: Bool

    /// Number of stars that will be purchased
    public let starCount: Int64

    /// Identifier of the store product associated with the option; may be empty if none
    public let storeProductId: String


    public init(
        amount: Int64,
        currency: String,
        isAdditional: Bool,
        starCount: Int64,
        storeProductId: String
    ) {
        self.amount = amount
        self.currency = currency
        self.isAdditional = isAdditional
        self.starCount = starCount
        self.storeProductId = storeProductId
    }
}

