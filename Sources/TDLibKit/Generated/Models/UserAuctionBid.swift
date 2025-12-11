//
//  UserAuctionBid.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Describes a bid of the current user in an auction
public struct UserAuctionBid: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the bid was made
    public let bidDate: Int

    /// The minimum number of Telegram Stars that can be put for the next bid
    public let nextBidStarCount: Int64

    /// Identifier of the user or the chat that will receive the auctioned item. If the auction is opened in context of another user or chat, then a warning is supposed to be shown to the current user
    public let ownerId: MessageSender

    /// The number of Telegram Stars that were put in the bid
    public let starCount: Int64

    /// True, if the bid was returned to the user, because it was outbid and can't win anymore
    public let wasReturned: Bool


    public init(
        bidDate: Int,
        nextBidStarCount: Int64,
        ownerId: MessageSender,
        starCount: Int64,
        wasReturned: Bool
    ) {
        self.bidDate = bidDate
        self.nextBidStarCount = nextBidStarCount
        self.ownerId = ownerId
        self.starCount = starCount
        self.wasReturned = wasReturned
    }
}

