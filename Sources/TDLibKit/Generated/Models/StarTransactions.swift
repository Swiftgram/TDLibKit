//
//  StarTransactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-64852808
//  https://github.com/tdlib/td/tree/64852808
//

import Foundation


/// Represents a list of Telegram Star transactions
public struct StarTransactions: Codable, Equatable, Hashable {

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// The amount of owned Telegram Stars
    public let starAmount: StarAmount

    /// List of transactions with Telegram Stars
    public let transactions: [StarTransaction]


    public init(
        nextOffset: String,
        starAmount: StarAmount,
        transactions: [StarTransaction]
    ) {
        self.nextOffset = nextOffset
        self.starAmount = starAmount
        self.transactions = transactions
    }
}

