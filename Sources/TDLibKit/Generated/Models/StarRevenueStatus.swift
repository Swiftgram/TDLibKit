//
//  StarRevenueStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.33-97ded010
//  https://github.com/tdlib/td/tree/97ded010
//

import Foundation


/// Contains information about Telegram stars earned by a bot or a chat
public struct StarRevenueStatus: Codable, Equatable, Hashable {

    /// The number of Telegram stars that are available for withdrawal
    public let availableCount: Int64

    /// The number of Telegram stars that aren't withdrawn yet
    public let currentCount: Int64

    /// Time left before the next withdrawal can be started, in seconds; 0 if withdrawal can be started now
    public let nextWithdrawalIn: Int

    /// Total number of the stars earned
    public let totalCount: Int64

    /// True, if Telegram stars can be withdrawn now or later
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

