//
//  PublicPostSearchLimits.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Contains information about public post search limits
public struct PublicPostSearchLimits: Codable, Equatable, Hashable {

    /// Number of queries that can be sent daily for free
    public let dailyFreeQueryCount: Int

    /// True, if the search for the specified query isn't charged
    public let isCurrentQueryFree: Bool

    /// Amount of time till the next free query can be sent; 0 if it can be sent now
    public let nextFreeQueryIn: Int

    /// Number of remaining free queries today
    public let remainingFreeQueryCount: Int

    /// Number of Telegram Stars that must be paid for each non-free query
    public let starCount: Int64


    public init(
        dailyFreeQueryCount: Int,
        isCurrentQueryFree: Bool,
        nextFreeQueryIn: Int,
        remainingFreeQueryCount: Int,
        starCount: Int64
    ) {
        self.dailyFreeQueryCount = dailyFreeQueryCount
        self.isCurrentQueryFree = isCurrentQueryFree
        self.nextFreeQueryIn = nextFreeQueryIn
        self.remainingFreeQueryCount = remainingFreeQueryCount
        self.starCount = starCount
    }
}

