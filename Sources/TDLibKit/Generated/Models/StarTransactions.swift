//
//  StarTransactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.31-63c7d030
//  https://github.com/tdlib/td/tree/63c7d030
//

import Foundation


/// Represents a list of Telegram star transactions
public struct StarTransactions: Codable, Equatable, Hashable {

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// The amount of owned Telegram stars
    public let starCount: Int64

    /// List of transactions with Telegram stars
    public let transactions: [StarTransaction]


    public init(
        nextOffset: String,
        starCount: Int64,
        transactions: [StarTransaction]
    ) {
        self.nextOffset = nextOffset
        self.starCount = starCount
        self.transactions = transactions
    }
}

