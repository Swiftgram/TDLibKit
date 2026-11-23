//
//  UpgradeGiftResult.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
//

import Foundation


/// Contains result of gift upgrading
public struct UpgradeGiftResult: Codable, Equatable, Hashable {

    /// True, if the gift can be transferred to another owner
    public let canBeTransferred: Bool

    /// Number of Telegram Stars that must be paid to drop the original details of the upgraded gift; 0 if not available
    public let dropOriginalDetailsStarCount: Int64

    /// The upgraded gift
    public let gift: UpgradedGift

    /// True, if the gift is displayed on the user's or the channel's profile page
    public let isSaved: Bool

    /// Point in time (Unix timestamp) when the gift can be minted as an NFT; can be in the past
    public let mintDate: Int

    /// Point in time (Unix timestamp) when the gift can be resold to another user; can be in the past; 0 if the gift can't be resold; only for the receiver of the gift
    public let nextResaleDate: Int

    /// Point in time (Unix timestamp) when the gift can be transferred to another owner; can be in the past; 0 if the gift can be transferred immediately or transfer isn't possible
    public let nextTransferDate: Int

    /// Unique identifier of the received gift for the current user
    public let receivedGiftId: String

    /// Number of Telegram Stars that must be paid to transfer the upgraded gift
    public let transferStarCount: Int64


    public init(
        canBeTransferred: Bool,
        dropOriginalDetailsStarCount: Int64,
        gift: UpgradedGift,
        isSaved: Bool,
        mintDate: Int,
        nextResaleDate: Int,
        nextTransferDate: Int,
        receivedGiftId: String,
        transferStarCount: Int64
    ) {
        self.canBeTransferred = canBeTransferred
        self.dropOriginalDetailsStarCount = dropOriginalDetailsStarCount
        self.gift = gift
        self.isSaved = isSaved
        self.mintDate = mintDate
        self.nextResaleDate = nextResaleDate
        self.nextTransferDate = nextTransferDate
        self.receivedGiftId = receivedGiftId
        self.transferStarCount = transferStarCount
    }
}

