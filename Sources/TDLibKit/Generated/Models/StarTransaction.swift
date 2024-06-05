//
//  StarTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-b102c3ad
//  https://github.com/tdlib/td/tree/b102c3ad
//

import Foundation


/// Represents a transaction changing the amount of owned Telegram stars
public struct StarTransaction: Codable, Equatable, Hashable, Identifiable {

    /// Point in time (Unix timestamp) when the transaction was completed
    public let date: Int

    /// Unique identifier of the transaction
    public let id: String

    /// True, if the transaction is a refund of a previous transaction
    public let isRefund: Bool

    /// Source of the transaction, or its recipient for outgoing transactions
    public let source: StarTransactionSource

    /// The amount of added owned Telegram stars; negative for outgoing transactions
    public let starCount: Int64


    public init(
        date: Int,
        id: String,
        isRefund: Bool,
        source: StarTransactionSource,
        starCount: Int64
    ) {
        self.date = date
        self.id = id
        self.isRefund = isRefund
        self.source = source
        self.starCount = starCount
    }
}

