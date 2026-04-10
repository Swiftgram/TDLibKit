//
//  TonRevenueStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-a82128ab
//  https://github.com/tdlib/td/tree/a82128ab
//

import Foundation


/// Contains information about Toncoins earned by the current user
public struct TonRevenueStatus: Codable, Equatable, Hashable {

    /// The Toncoin amount that is available for withdrawal; in the smallest units of the cryptocurrency
    public let availableAmount: TdInt64

    /// The Toncoin amount that isn't withdrawn yet; in the smallest units of the cryptocurrency
    public let balanceAmount: TdInt64

    /// Total Toncoin amount earned; in the smallest units of the cryptocurrency
    public let totalAmount: TdInt64

    /// True, if Toncoins can be withdrawn
    public let withdrawalEnabled: Bool


    public init(
        availableAmount: TdInt64,
        balanceAmount: TdInt64,
        totalAmount: TdInt64,
        withdrawalEnabled: Bool
    ) {
        self.availableAmount = availableAmount
        self.balanceAmount = balanceAmount
        self.totalAmount = totalAmount
        self.withdrawalEnabled = withdrawalEnabled
    }
}

