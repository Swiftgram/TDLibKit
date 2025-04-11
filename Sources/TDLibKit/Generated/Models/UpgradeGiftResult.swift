//
//  UpgradeGiftResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-a03a9047
//  https://github.com/tdlib/td/tree/a03a9047
//

import Foundation


/// Contains result of gift upgrading
public struct UpgradeGiftResult: Codable, Equatable, Hashable {

    /// True, if the gift can be transferred to another owner
    public let canBeTransferred: Bool

    /// Point in time (Unix timestamp) when the gift can be transferred to the TON blockchain as an NFT
    public let exportDate: Int

    /// The upgraded gift
    public let gift: UpgradedGift

    /// True, if the gift is displayed on the user's or the channel's profile page
    public let isSaved: Bool

    /// Unique identifier of the received gift for the current user
    public let receivedGiftId: String

    /// Number of Telegram Stars that must be paid to transfer the upgraded gift
    public let transferStarCount: Int64


    public init(
        canBeTransferred: Bool,
        exportDate: Int,
        gift: UpgradedGift,
        isSaved: Bool,
        receivedGiftId: String,
        transferStarCount: Int64
    ) {
        self.canBeTransferred = canBeTransferred
        self.exportDate = exportDate
        self.gift = gift
        self.isSaved = isSaved
        self.receivedGiftId = receivedGiftId
        self.transferStarCount = transferStarCount
    }
}

