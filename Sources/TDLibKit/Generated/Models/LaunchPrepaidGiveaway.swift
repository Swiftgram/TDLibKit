//
//  LaunchPrepaidGiveaway.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-04adfc87
//  https://github.com/tdlib/td/tree/04adfc87
//

import Foundation


/// Launches a prepaid giveaway
public struct LaunchPrepaidGiveaway: Codable, Equatable, Hashable {

    /// Unique identifier of the prepaid giveaway
    public let giveawayId: TdInt64?

    /// Giveaway parameters
    public let parameters: GiveawayParameters?

    /// The number of Telegram Stars to be distributed through the giveaway; pass 0 for Telegram Premium giveaways
    public let starCount: Int64?

    /// The number of users to receive giveaway prize
    public let winnerCount: Int?


    public init(
        giveawayId: TdInt64?,
        parameters: GiveawayParameters?,
        starCount: Int64?,
        winnerCount: Int?
    ) {
        self.giveawayId = giveawayId
        self.parameters = parameters
        self.starCount = starCount
        self.winnerCount = winnerCount
    }
}

