//
//  PollVoters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-afbfb4d8
//  https://github.com/tdlib/td/tree/afbfb4d8
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

