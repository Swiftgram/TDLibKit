//
//  PremiumGiftPaymentOption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-6e32e56b
//  https://github.com/tdlib/td/tree/6e32e56b
//

import Foundation


/// Describes an option for gifting Telegram Premium to a user. Use telegramPaymentPurposePremiumGift for out-of-store payments or payments in Telegram Stars
public struct PremiumGiftPaymentOption: Codable, Equatable, Hashable {

    /// The amount to pay, in the smallest units of the currency
    public let amount: Int64

    /// ISO 4217 currency code for the payment
    public let currency: String

    /// The discount associated with this option, as a percentage
    public let discountPercentage: Int

    /// Number of months the Telegram Premium subscription will be active
    public let monthCount: Int

    /// The alternative amount of Telegram Stars to pay; 0 if payment in Telegram Stars is not possible
    public let starCount: Int64

    /// A sticker to be shown along with the option; may be null if unknown
    public let sticker: Sticker?

    /// Identifier of the store product associated with the option
    public let storeProductId: String


    public init(
        amount: Int64,
        currency: String,
        discountPercentage: Int,
        monthCount: Int,
        starCount: Int64,
        sticker: Sticker?,
        storeProductId: String
    ) {
        self.amount = amount
        self.currency = currency
        self.discountPercentage = discountPercentage
        self.monthCount = monthCount
        self.starCount = starCount
        self.sticker = sticker
        self.storeProductId = storeProductId
    }
}

