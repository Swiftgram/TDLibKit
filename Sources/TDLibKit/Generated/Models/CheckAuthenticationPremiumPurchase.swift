//
//  CheckAuthenticationPremiumPurchase.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Checks whether an in-store purchase of Telegram Premium is possible before authorization. Works only when the current authorization state is authorizationStateWaitPremiumPurchase
public struct CheckAuthenticationPremiumPurchase: Codable, Equatable, Hashable {

    /// Paid amount, in the smallest units of the currency
    public let amount: Int64?

    /// ISO 4217 currency code of the payment currency
    public let currency: String?


    public init(
        amount: Int64?,
        currency: String?
    ) {
        self.amount = amount
        self.currency = currency
    }
}

