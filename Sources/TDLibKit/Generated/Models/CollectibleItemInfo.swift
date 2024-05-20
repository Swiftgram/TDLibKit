//
//  CollectibleItemInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about a collectible item and its last purchase
public struct CollectibleItemInfo: Codable, Equatable, Hashable {

    /// The paid amount, in the smallest units of the currency
    public let amount: Int64

    /// Cryptocurrency used to pay for the item
    public let cryptocurrency: String

    /// The paid amount, in the smallest units of the cryptocurrency
    public let cryptocurrencyAmount: TdInt64

    /// Currency for the paid amount
    public let currency: String

    /// Point in time (Unix timestamp) when the item was purchased
    public let purchaseDate: Int

    /// Individual URL for the item on https://fragment.com
    public let url: String


    public init(
        amount: Int64,
        cryptocurrency: String,
        cryptocurrencyAmount: TdInt64,
        currency: String,
        purchaseDate: Int,
        url: String
    ) {
        self.amount = amount
        self.cryptocurrency = cryptocurrency
        self.cryptocurrencyAmount = cryptocurrencyAmount
        self.currency = currency
        self.purchaseDate = purchaseDate
        self.url = url
    }
}

