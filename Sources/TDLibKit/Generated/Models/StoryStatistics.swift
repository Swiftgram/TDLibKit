//
//  StoryStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-e4796b9b
//  https://github.com/tdlib/td/tree/e4796b9b
//

import Foundation


/// A detailed statistics about a story
public struct StoryStatistics: Codable, Equatable, Hashable {

    /// A graph containing number of story views and shares
    public let storyInteractionGraph: StatisticalGraph

    /// A graph containing number of story reactions
    public let storyReactionGraph: StatisticalGraph


    public init(
        storyInteractionGraph: StatisticalGraph,
        storyReactionGraph: StatisticalGraph
    ) {
        self.storyInteractionGraph = storyInteractionGraph
        self.storyReactionGraph = storyReactionGraph
    }
}

