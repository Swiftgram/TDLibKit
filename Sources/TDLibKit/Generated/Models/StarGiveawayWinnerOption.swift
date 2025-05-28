//
//  StarGiveawayWinnerOption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Describes an option for the number of winners of a Telegram Star giveaway
public struct StarGiveawayWinnerOption: Codable, Equatable, Hashable {

    /// True, if the option must be chosen by default
    public let isDefault: Bool

    /// The number of users that will be chosen as winners
    public let winnerCount: Int

    /// The number of Telegram Stars that will be won by the winners of the giveaway
    public let wonStarCount: Int64


    public init(
        isDefault: Bool,
        winnerCount: Int,
        wonStarCount: Int64
    ) {
        self.isDefault = isDefault
        self.winnerCount = winnerCount
        self.wonStarCount = wonStarCount
    }
}

