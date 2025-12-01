//
//  SetAuthenticationPremiumPurchaseTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
//

import Foundation


/// Informs server about an in-store purchase of Telegram Premium before authorization. Works only when the current authorization state is authorizationStateWaitPremiumPurchase
public struct SetAuthenticationPremiumPurchaseTransaction: Codable, Equatable, Hashable {

    /// Paid amount, in the smallest units of the currency
    public let amount: Int64?

    /// ISO 4217 currency code of the payment currency
    public let currency: String?

    /// Pass true if this is a restore of a Telegram Premium purchase; only for App Store
    public let isRestore: Bool?

    /// Information about the transaction
    public let transaction: StoreTransaction?


    public init(
        amount: Int64?,
        currency: String?,
        isRestore: Bool?,
        transaction: StoreTransaction?
    ) {
        self.amount = amount
        self.currency = currency
        self.isRestore = isRestore
        self.transaction = transaction
    }
}

