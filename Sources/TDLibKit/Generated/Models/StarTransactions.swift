//
//  StarTransactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.34-81dc2e24
//  https://github.com/tdlib/td/tree/81dc2e24
//

import Foundation


/// Represents a list of Telegram Star transactions
public struct StarTransactions: Codable, Equatable, Hashable {

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// The amount of owned Telegram Stars
    public let starCount: Int64

    /// List of transactions with Telegram Stars
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

