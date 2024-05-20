//
//  ChatBoostStatus.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes current boost status of a chat
public struct ChatBoostStatus: Codable, Equatable, Hashable {

    /// Identifiers of boost slots of the current user applied to the chat
    public let appliedSlotIds: [Int]

    /// The number of boosts received by the chat
    public let boostCount: Int

    /// An HTTP URL, which can be used to boost the chat
    public let boostUrl: String

    /// The number of boosts added to reach the current level
    public let currentLevelBoostCount: Int

    /// The number of boosts received by the chat from created Telegram Premium gift codes and giveaways; always 0 if the current user isn't an administrator in the chat
    public let giftCodeBoostCount: Int

    /// Current boost level of the chat
    public let level: Int

    /// The number of boosts needed to reach the next level; 0 if the next level isn't available
    public let nextLevelBoostCount: Int

    /// Approximate number of Telegram Premium subscribers joined the chat; always 0 if the current user isn't an administrator in the chat
    public let premiumMemberCount: Int

    /// A percentage of Telegram Premium subscribers joined the chat; always 0 if the current user isn't an administrator in the chat
    public let premiumMemberPercentage: Double

    /// The list of prepaid giveaways available for the chat; only for chat administrators
    public let prepaidGiveaways: [PrepaidPremiumGiveaway]


    public init(
        appliedSlotIds: [Int],
        boostCount: Int,
        boostUrl: String,
        currentLevelBoostCount: Int,
        giftCodeBoostCount: Int,
        level: Int,
        nextLevelBoostCount: Int,
        premiumMemberCount: Int,
        premiumMemberPercentage: Double,
        prepaidGiveaways: [PrepaidPremiumGiveaway]
    ) {
        self.appliedSlotIds = appliedSlotIds
        self.boostCount = boostCount
        self.boostUrl = boostUrl
        self.currentLevelBoostCount = currentLevelBoostCount
        self.giftCodeBoostCount = giftCodeBoostCount
        self.level = level
        self.nextLevelBoostCount = nextLevelBoostCount
        self.premiumMemberCount = premiumMemberCount
        self.premiumMemberPercentage = premiumMemberPercentage
        self.prepaidGiveaways = prepaidGiveaways
    }
}

