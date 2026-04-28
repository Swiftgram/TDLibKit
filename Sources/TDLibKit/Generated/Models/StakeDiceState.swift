//
//  StakeDiceState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8fc2344f
//  https://github.com/tdlib/td/tree/8fc2344f
//

import Foundation


/// Describes state of the stake dice
public struct StakeDiceState: Codable, Equatable, Hashable {

    /// The number of rolled sixes towards the streak; 0-2
    public let currentStreak: Int

    /// The number of Toncoins received by the user for each 1000 Toncoins staked if the dice outcome is 1-6 correspondingly; may be empty if the stake dice can't be sent by the current user
    public let prizePerMille: [Int]

    /// The Toncoin amount that was staked in the previous roll; in the smallest units of the currency
    public let stakeToncoinAmount: Int64

    /// Hash of the state to use for sending the next dice; may be empty if the stake dice can't be sent by the current user
    public let stateHash: String

    /// The number of Toncoins received by the user for each 1000 Toncoins staked if the dice outcome is 6 three times in a row with the same stake
    public let streakPrizePerMille: Int

    /// The amounts of Toncoins that are suggested to be staked; in the smallest units of the currency
    public let suggestedStakeToncoinAmounts: [Int64]


    public init(
        currentStreak: Int,
        prizePerMille: [Int],
        stakeToncoinAmount: Int64,
        stateHash: String,
        streakPrizePerMille: Int,
        suggestedStakeToncoinAmounts: [Int64]
    ) {
        self.currentStreak = currentStreak
        self.prizePerMille = prizePerMille
        self.stakeToncoinAmount = stakeToncoinAmount
        self.stateHash = stateHash
        self.streakPrizePerMille = streakPrizePerMille
        self.suggestedStakeToncoinAmounts = suggestedStakeToncoinAmounts
    }
}

