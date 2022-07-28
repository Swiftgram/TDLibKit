//
//  PollOption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describes one answer option of a poll
public struct PollOption: Codable, Equatable {

    /// True, if the option is being chosen by a pending setPollAnswer request
    public let isBeingChosen: Bool

    /// True, if the option was chosen by the user
    public let isChosen: Bool

    /// Option text; 1-100 characters
    public let text: String

    /// The percentage of votes for this option; 0-100
    public let votePercentage: Int

    /// Number of voters for this option, available only for closed or voted polls
    public let voterCount: Int


    public init(
        isBeingChosen: Bool,
        isChosen: Bool,
        text: String,
        votePercentage: Int,
        voterCount: Int
    ) {
        self.isBeingChosen = isBeingChosen
        self.isChosen = isChosen
        self.text = text
        self.votePercentage = votePercentage
        self.voterCount = voterCount
    }
}

