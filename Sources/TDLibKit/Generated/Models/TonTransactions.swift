//
//  TonTransactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.53-bdec6af5
//  https://github.com/tdlib/td/tree/bdec6af5
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

