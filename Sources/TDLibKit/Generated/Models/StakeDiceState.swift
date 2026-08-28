//
//  StakeDiceState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Describes state of the stake dice
public struct StakeDiceState: Codable, Equatable, Hashable {

    /// The number of rolled sixes towards the streak; 0-2
    public let currentStreak: Int

    /// The number of Grams received by the user for each 1000 Grams staked if the dice outcome is 1-6 correspondingly; may be empty if the stake dice can't be sent by the current user
    public let prizePerMille: [Int]

    /// The amount of TON Grams staked in the previous roll; in the smallest units of the currency
    public let stakeGramAmount: Int64

    /// Hash of the state to use for sending the next dice; may be empty if the stake dice can't be sent by the current user
    public let stateHash: String

    /// The number of Grams received by the user for each 1000 Grams staked if the dice outcome is 6 three times in a row with the same stake
    public let streakPrizePerMille: Int

    /// The amounts of Grams that are suggested to be staked; in the smallest units of the currency
    public let suggestedStakeGramAmounts: [Int64]


    public init(
        currentStreak: Int,
        prizePerMille: [Int],
        stakeGramAmount: Int64,
        stateHash: String,
        streakPrizePerMille: Int,
        suggestedStakeGramAmounts: [Int64]
    ) {
        self.currentStreak = currentStreak
        self.prizePerMille = prizePerMille
        self.stakeGramAmount = stakeGramAmount
        self.stateHash = stateHash
        self.streakPrizePerMille = streakPrizePerMille
        self.suggestedStakeGramAmounts = suggestedStakeGramAmounts
    }
}

