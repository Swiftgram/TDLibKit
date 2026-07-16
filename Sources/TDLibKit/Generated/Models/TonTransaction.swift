//
//  TonTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-1b08c83b
//  https://github.com/tdlib/td/tree/1b08c83b
//

import Foundation


/// Represents a transaction changing the amount of owned TON Grams
public struct TonTransaction: Codable, Equatable, Hashable, Identifiable {

    /// Point in time (Unix timestamp) when the transaction was completed
    public let date: Int

    /// The amount of added owned Grams, in the smallest units of the cryptocurrency; negative for outgoing transactions
    public let gramAmount: Int64

    /// Unique identifier of the transaction
    public let id: String

    /// True, if the transaction is a refund of a previous transaction
    public let isRefund: Bool

    /// Type of the transaction
    public let type: TonTransactionType


    public init(
        date: Int,
        gramAmount: Int64,
        id: String,
        isRefund: Bool,
        type: TonTransactionType
    ) {
        self.date = date
        self.gramAmount = gramAmount
        self.id = id
        self.isRefund = isRefund
        self.type = type
    }
}

