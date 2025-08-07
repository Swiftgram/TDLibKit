//
//  TonTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-4269f54e
//  https://github.com/tdlib/td/tree/4269f54e
//

import Foundation


/// Represents a transaction changing the amount of owned Toncoins
public struct TonTransaction: Codable, Equatable, Hashable, Identifiable {

    /// Point in time (Unix timestamp) when the transaction was completed
    public let date: Int

    /// Unique identifier of the transaction
    public let id: String

    /// True, if the transaction is a refund of a previous transaction
    public let isRefund: Bool

    /// The amount of added owned Toncoins; negative for outgoing transactions
    public let tonAmount: Int64

    /// Type of the transaction
    public let type: TonTransactionType


    public init(
        date: Int,
        id: String,
        isRefund: Bool,
        tonAmount: Int64,
        type: TonTransactionType
    ) {
        self.date = date
        self.id = id
        self.isRefund = isRefund
        self.tonAmount = tonAmount
        self.type = type
    }
}

