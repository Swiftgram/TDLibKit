//
//  TonWalletTransactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Represents a list of TON Gram transactions
public struct TonWalletTransactions: Codable, Equatable, Hashable {

    /// The total owned amount, in the smallest units of TON Grams
    public let gramAmount: TdInt64

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// List of transactions
    public let transactions: [TonWalletTransaction]


    public init(
        gramAmount: TdInt64,
        nextOffset: String,
        transactions: [TonWalletTransaction]
    ) {
        self.gramAmount = gramAmount
        self.nextOffset = nextOffset
        self.transactions = transactions
    }
}

