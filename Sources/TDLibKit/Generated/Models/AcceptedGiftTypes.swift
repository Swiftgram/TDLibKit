//
//  AcceptedGiftTypes.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Describes gift types that are accepted by a user
public struct AcceptedGiftTypes: Codable, Equatable, Hashable {

    /// True, if gifts from channels are accepted subject to other restrictions
    public let giftsFromChannels: Bool

    /// True, if limited regular gifts are accepted
    public let limitedGifts: Bool

    /// True, if Telegram Premium subscription is accepted
    public let premiumSubscription: Bool

    /// True, if unlimited regular gifts are accepted
    public let unlimitedGifts: Bool

    /// True, if upgraded gifts and regular gifts that can be upgraded for free are accepted
    public let upgradedGifts: Bool


    public init(
        giftsFromChannels: Bool,
        limitedGifts: Bool,
        premiumSubscription: Bool,
        unlimitedGifts: Bool,
        upgradedGifts: Bool
    ) {
        self.giftsFromChannels = giftsFromChannels
        self.limitedGifts = limitedGifts
        self.premiumSubscription = premiumSubscription
        self.unlimitedGifts = unlimitedGifts
        self.upgradedGifts = upgradedGifts
    }
}

