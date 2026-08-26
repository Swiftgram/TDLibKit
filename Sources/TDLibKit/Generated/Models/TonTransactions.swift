//
//  TonTransactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-afbfb4d8
//  https://github.com/tdlib/td/tree/afbfb4d8
//

import Foundation


/// Represents a list of TON Gram transactions
public struct TonTransactions: Codable, Equatable, Hashable {

    /// The total amount of owned Grams, in the smallest units of the cryptocurrency
    public let gramAmount: Int64

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// List of Gram transactions
    public let transactions: [TonTransaction]


    public init(
        gramAmount: Int64,
        nextOffset: String,
        transactions: [TonTransaction]
    ) {
        self.gramAmount = gramAmount
        self.nextOffset = nextOffset
        self.transactions = transactions
    }
}

