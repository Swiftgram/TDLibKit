//
//  PollVoter.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-1b08c83b
//  https://github.com/tdlib/td/tree/1b08c83b
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

