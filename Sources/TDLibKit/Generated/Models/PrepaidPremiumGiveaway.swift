//
//  PrepaidPremiumGiveaway.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a prepaid Telegram Premium giveaway
public struct PrepaidPremiumGiveaway: Codable, Equatable, Hashable, Identifiable {

    /// Unique identifier of the prepaid giveaway
    public let id: TdInt64

    /// Number of months the Telegram Premium subscription will be active after code activation
    public let monthCount: Int

    /// Point in time (Unix timestamp) when the giveaway was paid
    public let paymentDate: Int

    /// Number of users which will receive Telegram Premium subscription gift codes
    public let winnerCount: Int


    public init(
        id: TdInt64,
        monthCount: Int,
        paymentDate: Int,
        winnerCount: Int
    ) {
        self.id = id
        self.monthCount = monthCount
        self.paymentDate = paymentDate
        self.winnerCount = winnerCount
    }
}

