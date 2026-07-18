//
//  PollVoteStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-022d6020
//  https://github.com/tdlib/td/tree/022d6020
//

import Foundation


/// A detailed statistics about poll votes
public struct PollVoteStatistics: Codable, Equatable, Hashable {

    /// A graph containing distribution of votes in the poll
    public let voteGraph: StatisticalGraph


    public init(voteGraph: StatisticalGraph) {
        self.voteGraph = voteGraph
    }
}

