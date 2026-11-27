//
//  PollVoteStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Detailed statistics about poll votes
public struct PollVoteStatistics: Codable, Equatable, Hashable {

    /// A graph containing the distribution of votes in the poll
    public let voteGraph: StatisticalGraph


    public init(voteGraph: StatisticalGraph) {
        self.voteGraph = voteGraph
    }
}

