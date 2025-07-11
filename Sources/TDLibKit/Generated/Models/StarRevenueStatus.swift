//
//  StarRevenueStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-0ece11a1
//  https://github.com/tdlib/td/tree/0ece11a1
//

import Foundation


/// Contains information about Telegram Stars earned by a bot or a chat
public struct StarRevenueStatus: Codable, Equatable, Hashable {

    /// The amount of Telegram Stars that are available for withdrawal
    public let availableAmount: StarAmount

    /// The amount of Telegram Stars that aren't withdrawn yet
    public let currentAmount: StarAmount

    /// Time left before the next withdrawal can be started, in seconds; 0 if withdrawal can be started now
    public let nextWithdrawalIn: Int

    /// Total amount of Telegram Stars earned
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

