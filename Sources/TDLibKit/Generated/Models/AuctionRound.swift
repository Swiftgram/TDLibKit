//
//  AuctionRound.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Describes a round of an auction
public struct AuctionRound: Codable, Equatable, Hashable {

    /// Duration of the round, in seconds
    public let duration: Int

    /// The number of seconds for which the round will be extended if there are changes in the top winners
    public let extendTime: Int

    /// 1-based number of the round
    public let number: Int

    /// The number of top winners who trigger round extension if changed
    public let topWinnerCount: Int


    public init(
        duration: Int,
        extendTime: Int,
        number: Int,
        topWinnerCount: Int
    ) {
        self.duration = duration
        self.extendTime = extendTime
        self.number = number
        self.topWinnerCount = topWinnerCount
    }
}

