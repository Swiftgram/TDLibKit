//
//  StarGiveawayPaymentOption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Describes an option for creating of Telegram Star giveaway. Use telegramPaymentPurposeStarGiveaway for out-of-store payments
public struct StarGiveawayPaymentOption: Codable, Equatable, Hashable {

    /// The amount to pay, in the smallest units of the currency
    public let amount: Int64

    /// ISO 4217 currency code for the payment
    public let currency: String

    /// True, if the option must be shown only in the full list of payment options
    public let isAdditional: Bool

    /// True, if the option must be chosen by default
    public let isDefault: Bool

    /// Number of Telegram Stars that will be distributed among winners
    public let starCount: Int64

    /// Identifier of the store product associated with the option; may be empty if none
    public let storeProductId: String

    /// Allowed options for the number of giveaway winners
    public let winnerOptions: [StarGiveawayWinnerOption]

    /// Number of times the chat will be boosted for one year if the option is chosen
    public let yearlyBoostCount: Int


    public init(
        amount: Int64,
        currency: String,
        isAdditional: Bool,
        isDefault: Bool,
        starCount: Int64,
        storeProductId: String,
        winnerOptions: [StarGiveawayWinnerOption],
        yearlyBoostCount: Int
    ) {
        self.amount = amount
        self.currency = currency
        self.isAdditional = isAdditional
        self.isDefault = isDefault
        self.starCount = starCount
        self.storeProductId = storeProductId
        self.winnerOptions = winnerOptions
        self.yearlyBoostCount = yearlyBoostCount
    }
}

