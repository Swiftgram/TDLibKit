//
//  GetTonTransactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Returns the list of Toncoin transactions of the current user
public struct GetTonTransactions: Codable, Equatable, Hashable {

    /// Direction of the transactions to receive; pass null to get all transactions
    public let direction: TransactionDirection?

    /// The maximum number of transactions to return
    public let limit: Int?

    /// Offset of the first transaction to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?


    public init(
        direction: TransactionDirection?,
        limit: Int?,
        offset: String?
    ) {
        self.direction = direction
        self.limit = limit
        self.offset = offset
    }
}

