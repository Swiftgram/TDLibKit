//
//  StarTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Represents a transaction changing the amount of owned Telegram Stars
public struct StarTransaction: Codable, Equatable, Hashable, Identifiable {

    /// Point in time (Unix timestamp) when the transaction was completed
    public let date: Int

    /// Unique identifier of the transaction
    public let id: String

    /// True, if the transaction is a refund of a previous transaction
    public let isRefund: Bool

    /// The amount of added owned Telegram Stars; negative for outgoing transactions
    public let starAmount: StarAmount

    /// Type of the transaction
    public let type: StarTransactionType


    public init(
        date: Int,
        id: String,
        isRefund: Bool,
        starAmount: StarAmount,
        type: StarTransactionType
    ) {
        self.date = date
        self.id = id
        self.isRefund = isRefund
        self.starAmount = starAmount
        self.type = type
    }
}

