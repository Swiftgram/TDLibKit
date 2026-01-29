//
//  StarRevenueStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.60-cb863c16
//  https://github.com/tdlib/td/tree/cb863c16
//

import Foundation


/// Contains information about Telegram Stars earned by a user or a chat
public struct StarRevenueStatus: Codable, Equatable, Hashable {

    /// The Telegram Star amount that is available for withdrawal
    public let availableAmount: StarAmount

    /// The Telegram Star amount that isn't withdrawn yet
    public let currentAmount: StarAmount

    /// Time left before the next withdrawal can be started, in seconds; 0 if withdrawal can be started now
    public let nextWithdrawalIn: Int

    /// Total Telegram Star amount earned
    public let totalAmount: StarAmount

    /// True, if Telegram Stars can be withdrawn now or later
    public let withdrawalEnabled: Bool


    public init(
        availableAmount: StarAmount,
        currentAmount: StarAmount,
        nextWithdrawalIn: Int,
        totalAmount: StarAmount,
        withdrawalEnabled: Bool
    ) {
        self.availableAmount = availableAmount
        self.currentAmount = currentAmount
        self.nextWithdrawalIn = nextWithdrawalIn
        self.totalAmount = totalAmount
        self.withdrawalEnabled = withdrawalEnabled
    }
}

