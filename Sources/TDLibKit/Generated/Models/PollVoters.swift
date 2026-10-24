//
//  PollVoters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-0e88653d
//  https://github.com/tdlib/td/tree/0e88653d
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

