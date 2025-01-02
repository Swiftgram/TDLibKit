//
//  UpgradeGiftResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
//

import Foundation


/// Contains result of gift upgrading
public struct UpgradeGiftResult: Codable, Equatable, Hashable {

    /// True, if the gift can be transferred to another user
    public let canBeTransferred: Bool

    /// Point in time (Unix timestamp) when the gift can be transferred to TON blockchain as an NFT
    public let exportDate: Int

    /// The upgraded gift
    public let gift: UpgradedGift

    /// True, if the gift is displayed on the user's profile page
    public let isSaved: Bool

    /// Number of Telegram Stars that must be paid to transfer the upgraded gift
    public let transferStarCount: Int64


    public init(
        canBeTransferred: Bool,
        exportDate: Int,
        gift: UpgradedGift,
        isSaved: Bool,
        transferStarCount: Int64
    ) {
        self.canBeTransferred = canBeTransferred
        self.exportDate = exportDate
        self.gift = gift
        self.isSaved = isSaved
        self.transferStarCount = transferStarCount
    }
}

