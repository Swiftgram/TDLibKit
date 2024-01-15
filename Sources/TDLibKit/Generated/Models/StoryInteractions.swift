//
//  StoryInteractions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.23-0f98d766
//  https://github.com/tdlib/td/tree/0f98d766
//

import Foundation


/// Represents a list of interactions with a story
public struct StoryInteractions: Codable, Equatable, Hashable {

    /// List of story interactions
    public let interactions: [StoryInteraction]

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// Approximate total number of interactions found
    public let totalCount: Int

    /// Approximate total number of found forwards and reposts; always 0 for chat stories
    public let totalForwardCount: Int

    /// Approximate total number of found reactions; always 0 for chat stories
    public let totalReactionCount: Int


    public init(
        interactions: [StoryInteraction],
        nextOffset: String,
        totalCount: Int,
        totalForwardCount: Int,
        totalReactionCount: Int
    ) {
        self.interactions = interactions
        self.nextOffset = nextOffset
        self.totalCount = totalCount
        self.totalForwardCount = totalForwardCount
        self.totalReactionCount = totalReactionCount
    }
}

