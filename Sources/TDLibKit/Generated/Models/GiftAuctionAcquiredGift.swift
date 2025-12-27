//
//  GiftAuctionAcquiredGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Represents a gift that was acquired by the current user on an auction
public struct GiftAuctionAcquiredGift: Codable, Equatable, Hashable {

    /// Identifier of the auction round in which the gift was acquired
    public let auctionRoundNumber: Int

    /// Position of the user in the round among all auction participants
    public let auctionRoundPosition: Int

    /// Point in time (Unix timestamp) when the gift was acquired
    public let date: Int

    /// True, if the sender and gift text are shown only to the gift receiver; otherwise, everyone will be able to see them
    public let isPrivate: Bool

    /// Receiver of the gift
    public let receiverId: MessageSender

    /// The number of Telegram Stars that were paid for the gift
    public let starCount: Int64

    /// Message added to the gift
    public let text: FormattedText

    /// Unique number of the gift among gifts upgraded from the same gift after upgrade; 0 if yet unassigned
    public let uniqueGiftNumber: Int


    public init(
        auctionRoundNumber: Int,
        auctionRoundPosition: Int,
        date: Int,
        isPrivate: Bool,
        receiverId: MessageSender,
        starCount: Int64,
        text: FormattedText,
        uniqueGiftNumber: Int
    ) {
        self.auctionRoundNumber = auctionRoundNumber
        self.auctionRoundPosition = auctionRoundPosition
        self.date = date
        self.isPrivate = isPrivate
        self.receiverId = receiverId
        self.starCount = starCount
        self.text = text
        self.uniqueGiftNumber = uniqueGiftNumber
    }
}

