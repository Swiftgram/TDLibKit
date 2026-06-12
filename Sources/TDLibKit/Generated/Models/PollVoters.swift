//
//  PollVoters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-d6debbb2
//  https://github.com/tdlib/td/tree/d6debbb2
//

import Foundation


/// Represents a list of poll voters
public struct PollVoters: Codable, Equatable, Hashable {

    /// Approximate total number of poll voters found
    public let totalCount: Int

    /// List of poll voters
    public let voters: [PollVoter]


    public init(
        totalCount: Int,
        voters: [PollVoter]
    ) {
        self.totalCount = totalCount
        self.voters = voters
    }
}

