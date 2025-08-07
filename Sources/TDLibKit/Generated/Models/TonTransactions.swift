//
//  TonTransactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-4269f54e
//  https://github.com/tdlib/td/tree/4269f54e
//

import Foundation


/// Represents a list of Toncoin transactions
public struct TonTransactions: Codable, Equatable, Hashable {

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// The total amount of owned Toncoins
    public let tonAmount: Int64

    /// List of Toncoin transactions
    public let transactions: [TonTransaction]


    public init(
        nextOffset: String,
        tonAmount: Int64,
        transactions: [TonTransaction]
    ) {
        self.nextOffset = nextOffset
        self.tonAmount = tonAmount
        self.transactions = transactions
    }
}

