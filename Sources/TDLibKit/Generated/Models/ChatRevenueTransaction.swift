//
//  ChatRevenueTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.64-7a7081bf
//  https://github.com/tdlib/td/tree/7a7081bf
//

import Foundation


/// Contains a chat revenue transactions
public struct ChatRevenueTransaction: Codable, Equatable, Hashable {

    /// Cryptocurrency in which revenue is calculated
    public let cryptocurrency: String

    /// The withdrawn amount, in the smallest units of the cryptocurrency
    public let cryptocurrencyAmount: TdInt64

    /// Type of the transaction
    public let type: ChatRevenueTransactionType


    public init(
        cryptocurrency: String,
        cryptocurrencyAmount: TdInt64,
        type: ChatRevenueTransactionType
    ) {
        self.cryptocurrency = cryptocurrency
        self.cryptocurrencyAmount = cryptocurrencyAmount
        self.type = type
    }
}

