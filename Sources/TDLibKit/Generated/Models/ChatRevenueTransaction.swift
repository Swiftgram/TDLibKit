//
//  ChatRevenueTransaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-7601cdfb
//  https://github.com/tdlib/td/tree/7601cdfb
//

import Foundation


/// Contains a chat revenue transaction
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

