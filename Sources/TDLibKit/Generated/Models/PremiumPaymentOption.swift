//
//  PremiumPaymentOption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Describes an option for buying Telegram Premium to a user
public struct PremiumPaymentOption: Codable, Equatable, Hashable {

    /// The amount to pay, in the smallest units of the currency
    public let amount: Int64

    /// ISO 4217 currency code for Telegram Premium subscription payment
    public let currency: String

    /// The discount associated with this option, as a percentage
    public let discountPercentage: Int

    /// Number of months the Telegram Premium subscription will be active. Use getPremiumInfoSticker to get the sticker to be used as representation of the Telegram Premium subscription
    public let monthCount: Int

    /// An internal link to be opened for buying Telegram Premium to the user if store payment isn't possible; may be null if direct payment isn't available
    public let paymentLink: InternalLinkType?

    /// Identifier of the store product associated with the option
    public let storeProductId: String


    public init(
        amount: Int64,
        currency: String,
        discountPercentage: Int,
        monthCount: Int,
        paymentLink: InternalLinkType?,
        storeProductId: String
    ) {
        self.amount = amount
        self.currency = currency
        self.discountPercentage = discountPercentage
        self.monthCount = monthCount
        self.paymentLink = paymentLink
        self.storeProductId = storeProductId
    }
}

