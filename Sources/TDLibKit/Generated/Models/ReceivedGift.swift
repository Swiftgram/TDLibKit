//
//  ReceivedGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-5c77c469
//  https://github.com/tdlib/td/tree/5c77c469
//

import Foundation


/// Represents a gift received by a user or a chat
public struct ReceivedGift: Codable, Equatable, Hashable {

    /// True, if the gift is an upgraded gift that can be transferred to another owner; only for the receiver of the gift
    public let canBeTransferred: Bool

    /// True, if the gift is a regular gift that can be upgraded to a unique gift; only for the receiver of the gift
    public let canBeUpgraded: Bool

    /// Point in time (Unix timestamp) when the gift was sent
    public let date: Int

    /// Point in time (Unix timestamp) when the upgraded gift can be transferred to the TON blockchain as an NFT; 0 if NFT export isn't possible; only for the receiver of the gift
    public let exportDate: Int

    /// The gift
    public let gift: SentGift

    /// True, if the gift is pinned to the top of the chat's profile page
    public let isPinned: Bool

    /// True, if the sender and gift text are shown only to the gift receiver; otherwise, everyone are able to see them
    public let isPrivate: Bool

    /// True, if the gift is displayed on the chat's profile page; only for the receiver of the gift
    public let isSaved: Bool

    /// Point in time (Unix timestamp) when the gift can be resold to another user; 0 if the gift can't be resold; only for the receiver of the gift
    public let nextResaleDate: Int

    /// Point in time (Unix timestamp) when the gift can be transferred to another owner; 0 if the gift can be transferred immediately or transfer isn't possible; only for the receiver of the gift
    public let nextTransferDate: Int

    /// Number of Telegram Stars that were paid by the sender for the ability to upgrade the gift
    public let prepaidUpgradeStarCount: Int64

    /// Unique identifier of the received gift for the current user; only for the receiver of the gift
    public let receivedGiftId: String

    /// Number of Telegram Stars that can be claimed by the receiver instead of the regular gift; 0 if the gift can't be sold by the current user
    public let sellStarCount: Int64

    /// Identifier of a user or a chat that sent the gift; may be null if unknown
    public let senderId: MessageSender?

    /// Message added to the gift
    public let text: FormattedText

    /// Number of Telegram Stars that must be paid to transfer the upgraded gift; only for the receiver of the gift
    public let transferStarCount: Int64

    /// True, if the gift was refunded and isn't available anymore
    public let wasRefunded: Bool


    public init(
        canBeTransferred: Bool,
        canBeUpgraded: Bool,
        date: Int,
        exportDate: Int,
        gift: SentGift,
        isPinned: Bool,
        isPrivate: Bool,
        isSaved: Bool,
        nextResaleDate: Int,
        nextTransferDate: Int,
        prepaidUpgradeStarCount: Int64,
        receivedGiftId: String,
        sellStarCount: Int64,
        senderId: MessageSender?,
        text: FormattedText,
        transferStarCount: Int64,
        wasRefunded: Bool
    ) {
        self.canBeTransferred = canBeTransferred
        self.canBeUpgraded = canBeUpgraded
        self.date = date
        self.exportDate = exportDate
        self.gift = gift
        self.isPinned = isPinned
        self.isPrivate = isPrivate
        self.isSaved = isSaved
        self.nextResaleDate = nextResaleDate
        self.nextTransferDate = nextTransferDate
        self.prepaidUpgradeStarCount = prepaidUpgradeStarCount
        self.receivedGiftId = receivedGiftId
        self.sellStarCount = sellStarCount
        self.senderId = senderId
        self.text = text
        self.transferStarCount = transferStarCount
        self.wasRefunded = wasRefunded
    }
}

