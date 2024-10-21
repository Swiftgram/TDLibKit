//
//  StarRevenueStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-b39769be
//  https://github.com/tdlib/td/tree/b39769be
//

import Foundation


/// Contains information about Telegram Stars earned by a bot or a chat
public struct StarRevenueStatus: Codable, Equatable, Hashable {

    /// The number of Telegram Stars that are available for withdrawal
    public let availableCount: Int64

    /// The number of Telegram Stars that aren't withdrawn yet
    public let currentCount: Int64

    /// Time left before the next withdrawal can be started, in seconds; 0 if withdrawal can be started now
    public let nextWithdrawalIn: Int

    /// Total number of Telegram Stars earned
    public let totalCount: Int64

    /// True, if Telegram Stars can be withdrawn now or later
    public let withdrawalEnabled: Bool


    public init(
        availableCount: Int64,
        currentCount: Int64,
        nextWithdrawalIn: Int,
        totalCount: Int64,
        withdrawalEnabled: Bool
    ) {
        self.availableCount = availableCount
        self.currentCount = currentCount
        self.nextWithdrawalIn = nextWithdrawalIn
        self.totalCount = totalCount
        self.withdrawalEnabled = withdrawalEnabled
    }
}

