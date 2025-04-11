//
//  ChatRevenueTransactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-a03a9047
//  https://github.com/tdlib/td/tree/a03a9047
//

import Foundation


/// Contains a list of chat revenue transactions
public struct ChatRevenueTransactions: Codable, Equatable, Hashable {

    /// Total number of transactions
    public let totalCount: Int

    /// List of transactions
    public let transactions: [ChatRevenueTransaction]


    public init(
        totalCount: Int,
        transactions: [ChatRevenueTransaction]
    ) {
        self.totalCount = totalCount
        self.transactions = transactions
    }
}

