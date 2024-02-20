//
//  LaunchPrepaidPremiumGiveaway.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.25-6c5441c8
//  https://github.com/tdlib/td/tree/6c5441c8
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

