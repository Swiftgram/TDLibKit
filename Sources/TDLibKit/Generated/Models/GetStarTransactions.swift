//
//  GetStarTransactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-7e950e1b
//  https://github.com/tdlib/td/tree/7e950e1b
//

import Foundation


/// Returns the list of Telegram star transactions for the current user
public struct GetStarTransactions: Codable, Equatable, Hashable {

    /// Direction of the transactions to receive; pass null to get all transactions
    public let direction: StarTransactionDirection?

    /// Offset of the first transaction to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?


    public init(
        direction: StarTransactionDirection?,
        offset: String?
    ) {
        self.direction = direction
        self.offset = offset
    }
}

