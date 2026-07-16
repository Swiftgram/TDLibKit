//
//  ChatRevenueTransactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-1b08c83b
//  https://github.com/tdlib/td/tree/1b08c83b
//

import Foundation


/// Contains a list of chat revenue transactions
public struct ChatRevenueTransactions: Codable, Equatable, Hashable {

    /// The amount of owned TON Grams; in the smallest units of the cryptocurrency
    public let gramAmount: Int64

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// List of transactions
    public let transactions: [ChatRevenueTransaction]


    public init(
        gramAmount: Int64,
        nextOffset: String,
        transactions: [ChatRevenueTransaction]
    ) {
        self.gramAmount = gramAmount
        self.nextOffset = nextOffset
        self.transactions = transactions
    }
}

