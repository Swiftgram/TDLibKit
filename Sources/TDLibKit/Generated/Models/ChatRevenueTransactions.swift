//
//  ChatRevenueTransactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Contains a list of chat revenue transactions
public struct ChatRevenueTransactions: Codable, Equatable, Hashable {

    /// The owned amount, in the smallest units of TON Grams
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

