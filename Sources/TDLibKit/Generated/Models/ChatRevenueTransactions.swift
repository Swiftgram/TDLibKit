//
//  ChatRevenueTransactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Contains a list of chat revenue transactions
public struct ChatRevenueTransactions: Codable, Equatable, Hashable {

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// The amount of owned Toncoins; in the smallest units of the cryptocurrency
    public let tonAmount: Int64

    /// List of transactions
    public let transactions: [ChatRevenueTransaction]


    public init(
        nextOffset: String,
        tonAmount: Int64,
        transactions: [ChatRevenueTransaction]
    ) {
        self.nextOffset = nextOffset
        self.tonAmount = tonAmount
        self.transactions = transactions
    }
}

