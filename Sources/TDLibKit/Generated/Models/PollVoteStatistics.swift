//
//  PollVoteStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-42e6a525
//  https://github.com/tdlib/td/tree/42e6a525
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

