//
//  StarTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.31-8f19c751
//  https://github.com/tdlib/td/tree/8f19c751
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

    /// Source of the incoming transaction, or its recipient for outgoing transactions
    public let partner: StarTransactionPartner

    /// The amount of added owned Telegram stars; negative for outgoing transactions
    public let starCount: Int64


    public init(
        date: Int,
        id: String,
        isRefund: Bool,
        partner: StarTransactionPartner,
        starCount: Int64
    ) {
        self.date = date
        self.id = id
        self.isRefund = isRefund
        self.partner = partner
        self.starCount = starCount
    }
}

