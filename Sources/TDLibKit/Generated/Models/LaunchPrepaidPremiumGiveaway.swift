//
//  LaunchPrepaidPremiumGiveaway.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.32-2820a9d2
//  https://github.com/tdlib/td/tree/2820a9d2
//

import Foundation


/// Launches a prepaid Telegram Premium giveaway
public struct LaunchPrepaidPremiumGiveaway: Codable, Equatable, Hashable {

    /// Unique identifier of the prepaid giveaway
    public let giveawayId: TdInt64?

    /// Giveaway parameters
    public let parameters: PremiumGiveawayParameters?


    public init(
        giveawayId: TdInt64?,
        parameters: PremiumGiveawayParameters?
    ) {
        self.giveawayId = giveawayId
        self.parameters = parameters
    }
}

