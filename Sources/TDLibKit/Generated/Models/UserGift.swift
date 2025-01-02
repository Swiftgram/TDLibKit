//
//  UserGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
//

import Foundation


/// Represents a gift received by a user
public struct UserGift: Codable, Equatable, Hashable {

    /// True, if the gift is an upgraded gift that can be transferred to another user; only for the receiver of the gift
    public let canBeTransferred: Bool

    /// True, if the gift is a regular gift that can be upgraded to a unique gift; only for the receiver of the gift
    public let canBeUpgraded: Bool

    /// Point in time (Unix timestamp) when the gift was sent
    public let date: Int

    /// Point in time (Unix timestamp) when the upgraded gift can be transferred to TON blockchain as an NFT; 0 if NFT export isn't possible; only for the receiver of the gift
    public let exportDate: Int

    /// The gift
    public let gift: SentGift

    /// True, if the sender and gift text are shown only to the gift receiver; otherwise, everyone are able to see them
    public let isPrivate: Bool

    /// True, if the gift is displayed on the user's profile page; only for the receiver of the gift
    public let isSaved: Bool

    /// Identifier of the message with the gift in the chat with the sender of the gift; can be 0 or an identifier of a deleted message; only for the receiver of the gift
    public let messageId: Int64

    /// Number of Telegram Stars that were paid by the sender for the ability to upgrade the gift
    public let prepaidUpgradeStarCount: Int64

    /// Number of Telegram Stars that can be claimed by the receiver instead of the regular gift; 0 if the gift can't be sold by the current user
    public let sellStarCount: Int64

    /// Identifier of the user that sent the gift; 0 if unknown
    public let senderUserId: Int64

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
        isPrivate: Bool,
        isSaved: Bool,
        messageId: Int64,
        prepaidUpgradeStarCount: Int64,
        sellStarCount: Int64,
        senderUserId: Int64,
        text: FormattedText,
        transferStarCount: Int64,
        wasRefunded: Bool
    ) {
        self.canBeTransferred = canBeTransferred
        self.canBeUpgraded = canBeUpgraded
        self.date = date
        self.exportDate = exportDate
        self.gift = gift
        self.isPrivate = isPrivate
        self.isSaved = isSaved
        self.messageId = messageId
        self.prepaidUpgradeStarCount = prepaidUpgradeStarCount
        self.sellStarCount = sellStarCount
        self.senderUserId = senderUserId
        self.text = text
        self.transferStarCount = transferStarCount
        self.wasRefunded = wasRefunded
    }
}

