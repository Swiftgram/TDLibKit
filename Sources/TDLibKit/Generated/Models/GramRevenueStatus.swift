//
//  GramRevenueStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-d8d46dfa
//  https://github.com/tdlib/td/tree/d8d46dfa
//

import Foundation


/// Contains information about TON Grams earned by the current user
public struct GramRevenueStatus: Codable, Equatable, Hashable {

    /// The Gram amount that is available for withdrawal; in the smallest units of the cryptocurrency
    public let availableAmount: TdInt64

    /// The Gram amount that isn't withdrawn yet; in the smallest units of the cryptocurrency
    public let balanceAmount: TdInt64

    /// Total Gram amount earned; in the smallest units of the cryptocurrency
    public let totalAmount: TdInt64

    /// True, if Grams can be withdrawn
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

