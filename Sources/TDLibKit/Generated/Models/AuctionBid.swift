//
//  AuctionBid.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Describes a bid in an auction
public struct AuctionBid: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the bid was made
    public let bidDate: Int

    /// Position of the bid in the list of all bids
    public let position: Int

    /// The number of Telegram Stars that were put in the bid
    public let starCount: Int64


    public init(
        bidDate: Int,
        position: Int,
        starCount: Int64
    ) {
        self.bidDate = bidDate
        self.position = position
        self.starCount = starCount
    }
}

