//
//  AuctionState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Describes state of an auction
public indirect enum AuctionState: Codable, Equatable, Hashable {

    /// Contains information about an ongoing auction
    case auctionStateActive(AuctionStateActive)

    /// Contains information about a finished auction
    case auctionStateFinished(AuctionStateFinished)


    private enum Kind: String, Codable {
        case auctionStateActive
        case auctionStateFinished
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .auctionStateActive:
            let value = try AuctionStateActive(from: decoder)
            self = .auctionStateActive(value)
        case .auctionStateFinished:
            let value = try AuctionStateFinished(from: decoder)
            self = .auctionStateFinished(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .auctionStateActive(let value):
            try container.encode(Kind.auctionStateActive, forKey: .type)
            try value.encode(to: encoder)
        case .auctionStateFinished(let value):
            try container.encode(Kind.auctionStateFinished, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// Contains information about an ongoing auction
public struct AuctionStateActive: Codable, Equatable, Hashable {

    /// The number of items that were purchased by the current user on the auciton
    public let acquiredItemCount: Int

    /// A sparse list of bids that were made in the auction
    public let bidLevels: [AuctionBid]

    /// Point in time (Unix timestamp) when the current round will end
    public let currentRoundEndDate: Int

    /// 1-based number of the current round
    public let currentRoundNumber: Int

    /// Point in time (Unix timestamp) when the auction will be ended
    public let endDate: Int

    /// The number of items that have to be distributed on the auciton
    public let leftItemCount: Int

    /// The minimum possible bid in the auction in Telegram Stars
    public let minBid: Int64

    /// Point in time (Unix timestamp) when the auction started
    public let startDate: Int

    /// User identifiers of at most 3 users with the biggest bids
    public let topBidderUserIds: [Int64]

    /// The total number of rounds
    public let totalRoundCount: Int

    /// Bid of the current user in the auction; may be null if none
    public let userBid: UserAuctionBid?


    public init(
        acquiredItemCount: Int,
        bidLevels: [AuctionBid],
        currentRoundEndDate: Int,
        currentRoundNumber: Int,
        endDate: Int,
        leftItemCount: Int,
        minBid: Int64,
        startDate: Int,
        topBidderUserIds: [Int64],
        totalRoundCount: Int,
        userBid: UserAuctionBid?
    ) {
        self.acquiredItemCount = acquiredItemCount
        self.bidLevels = bidLevels
        self.currentRoundEndDate = currentRoundEndDate
        self.currentRoundNumber = currentRoundNumber
        self.endDate = endDate
        self.leftItemCount = leftItemCount
        self.minBid = minBid
        self.startDate = startDate
        self.topBidderUserIds = topBidderUserIds
        self.totalRoundCount = totalRoundCount
        self.userBid = userBid
    }
}

/// Contains information about a finished auction
public struct AuctionStateFinished: Codable, Equatable, Hashable {

    /// The number of items that were purchased by the current user on the auciton
    public let acquiredItemCount: Int

    /// Average price of bought items in Telegram Stars
    public let averagePrice: Int64

    /// Point in time (Unix timestamp) when the auction will be ended
    public let endDate: Int

    /// Point in time (Unix timestamp) when the auction started
    public let startDate: Int


    public init(
        acquiredItemCount: Int,
        averagePrice: Int64,
        endDate: Int,
        startDate: Int
    ) {
        self.acquiredItemCount = acquiredItemCount
        self.averagePrice = averagePrice
        self.endDate = endDate
        self.startDate = startDate
    }
}

