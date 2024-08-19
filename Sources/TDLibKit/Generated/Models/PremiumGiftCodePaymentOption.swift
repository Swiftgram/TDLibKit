//
//  PremiumGiftCodePaymentOption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.35-9b6ff586
//  https://github.com/tdlib/td/tree/9b6ff586
//

import Foundation


/// Describes an option for creating Telegram Premium gift codes. Use telegramPaymentPurposePremiumGiftCodes for out-of-store payments
public struct PremiumGiftCodePaymentOption: Codable, Equatable, Hashable {

    /// The amount to pay, in the smallest units of the currency
    public let amount: Int64

    /// ISO 4217 currency code for Telegram Premium gift code payment
    public let currency: String

    /// Number of months the Telegram Premium subscription will be active
    public let monthCount: Int

    /// Identifier of the store product associated with the option; may be empty if none
    public let storeProductId: String

    /// Number of times the store product must be paid
    public let storeProductQuantity: Int

    /// Number of users which will be able to activate the gift codes
    public let userCount: Int


    public init(
        amount: Int64,
        currency: String,
        monthCount: Int,
        storeProductId: String,
        storeProductQuantity: Int,
        userCount: Int
    ) {
        self.amount = amount
        self.currency = currency
        self.monthCount = monthCount
        self.storeProductId = storeProductId
        self.storeProductQuantity = storeProductQuantity
        self.userCount = userCount
    }
}

