//
//  PollVoters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-23383aef
//  https://github.com/tdlib/td/tree/23383aef
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

