//
//  ChatRevenueAmount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Contains information about revenue earned from sponsored messages in a chat
public struct ChatRevenueAmount: Codable, Equatable, Hashable {

    /// Amount of the cryptocurrency available for withdrawal, in the smallest units of the cryptocurrency
    public let availableAmount: TdInt64

    /// Amount of the cryptocurrency that isn't withdrawn yet, in the smallest units of the cryptocurrency
    public let balanceAmount: TdInt64

    /// Cryptocurrency in which revenue is calculated
    public let cryptocurrency: String

    /// Total amount of the cryptocurrency earned, in the smallest units of the cryptocurrency
    public let totalAmount: TdInt64

    /// True, if Telegram Stars can be withdrawn now or later
    public let withdrawalEnabled: Bool


    public init(
        availableAmount: TdInt64,
        balanceAmount: TdInt64,
        cryptocurrency: String,
        totalAmount: TdInt64,
        withdrawalEnabled: Bool
    ) {
        self.availableAmount = availableAmount
        self.balanceAmount = balanceAmount
        self.cryptocurrency = cryptocurrency
        self.totalAmount = totalAmount
        self.withdrawalEnabled = withdrawalEnabled
    }
}

