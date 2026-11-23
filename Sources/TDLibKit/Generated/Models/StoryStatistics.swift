//
//  StoryStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
//

import Foundation


/// Detailed statistics about a story
public struct StoryStatistics: Codable, Equatable, Hashable {

    /// A graph containing the number of story views and shares
    public let storyInteractionGraph: StatisticalGraph

    /// A graph containing the number of story reactions
    public let storyReactionGraph: StatisticalGraph


    public init(
        storyInteractionGraph: StatisticalGraph,
        storyReactionGraph: StatisticalGraph
    ) {
        self.storyInteractionGraph = storyInteractionGraph
        self.storyReactionGraph = storyReactionGraph
    }
}

