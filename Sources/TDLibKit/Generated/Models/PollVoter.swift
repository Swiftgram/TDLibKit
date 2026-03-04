//
//  PollVoter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.62-af0cb1d3
//  https://github.com/tdlib/td/tree/af0cb1d3
//

import Foundation


/// Represents a poll voter
public struct PollVoter: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the vote was added
    public let date: Int

    /// The voter identifier
    public let voterId: MessageSender


    public init(
        date: Int,
        voterId: MessageSender
    ) {
        self.date = date
        self.voterId = voterId
    }
}

