//
//  AcceptedGiftTypes.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-f1b75003
//  https://github.com/tdlib/td/tree/f1b75003
//

import Foundation


/// Describes gift types that are accepted by a user
public struct AcceptedGiftTypes: Codable, Equatable, Hashable {

    /// True, if limited regular gifts are accepted
    public let limitedGifts: Bool

    /// True, if Telegram Premium subscription is accepted
    public let premiumSubscription: Bool

    /// True, if unlimited regular gifts are accepted
    public let unlimitedGifts: Bool

    /// True, if upgraded gifts and regular gifts that can be upgraded for free are accepted
    public let upgradedGifts: Bool


    public init(
        limitedGifts: Bool,
        premiumSubscription: Bool,
        unlimitedGifts: Bool,
        upgradedGifts: Bool
    ) {
        self.limitedGifts = limitedGifts
        self.premiumSubscription = premiumSubscription
        self.unlimitedGifts = unlimitedGifts
        self.upgradedGifts = upgradedGifts
    }
}

