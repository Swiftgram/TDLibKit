//
//  PremiumGiftCodePaymentOption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.44-28c6f2e9
//  https://github.com/tdlib/td/tree/28c6f2e9
//

import Foundation


/// Describes an option for creating Telegram Premium gift codes or Telegram Premium giveaway. Use telegramPaymentPurposePremiumGiftCodes or telegramPaymentPurposePremiumGiveaway for out-of-store payments
public struct PremiumGiftCodePaymentOption: Codable, Equatable, Hashable {

    /// The amount to pay, in the smallest units of the currency
    public let amount: Int64

    /// ISO 4217 currency code for Telegram Premium gift code payment
    public let currency: String

    /// The discount associated with this option, as a percentage
    public let discountPercentage: Int

    /// Number of months the Telegram Premium subscription will be active
    public let monthCount: Int

    /// A sticker to be shown along with the gift code; may be null if unknown
    public let sticker: Sticker?

    /// Identifier of the store product associated with the option; may be empty if none
    public let storeProductId: String

    /// Number of times the store product must be paid
    public let storeProductQuantity: Int

    /// Number of users which will be able to activate the gift codes
    public let winnerCount: Int


    public init(
        amount: Int64,
        currency: String,
        discountPercentage: Int,
        monthCount: Int,
        sticker: Sticker?,
        storeProductId: String,
        storeProductQuantity: Int,
        winnerCount: Int
    ) {
        self.amount = amount
        self.currency = currency
        self.discountPercentage = discountPercentage
        self.monthCount = monthCount
        self.sticker = sticker
        self.storeProductId = storeProductId
        self.storeProductQuantity = storeProductQuantity
        self.winnerCount = winnerCount
    }
}

