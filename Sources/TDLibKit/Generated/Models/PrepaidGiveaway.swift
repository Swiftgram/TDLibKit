//
//  PrepaidGiveaway.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-53acb2b5
//  https://github.com/tdlib/td/tree/53acb2b5
//

import Foundation


/// Describes a prepaid giveaway
public struct PrepaidGiveaway: Codable, Equatable, Hashable, Identifiable {

    /// The number of boosts received by the chat from the giveaway; for Telegram Star giveaways only
    public let boostCount: Int

    /// Unique identifier of the prepaid giveaway
    public let id: TdInt64

    /// Point in time (Unix timestamp) when the giveaway was paid
    public let paymentDate: Int

    /// Prize of the giveaway
    public let prize: GiveawayPrize

    /// Number of users which will receive giveaway prize
    public let winnerCount: Int


    public init(
        boostCount: Int,
        id: TdInt64,
        paymentDate: Int,
        prize: GiveawayPrize,
        winnerCount: Int
    ) {
        self.boostCount = boostCount
        self.id = id
        self.paymentDate = paymentDate
        self.prize = prize
        self.winnerCount = winnerCount
    }
}

