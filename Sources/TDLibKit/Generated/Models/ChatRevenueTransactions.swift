//
//  ChatRevenueTransactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-0e88653d
//  https://github.com/tdlib/td/tree/0e88653d
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

