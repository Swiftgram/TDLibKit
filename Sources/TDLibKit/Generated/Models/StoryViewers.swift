//
//  StoryViewers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-1a50ec47
//  https://github.com/tdlib/td/tree/1a50ec47
//

import Foundation


/// Represents a list of story viewers
public struct StoryViewers: Codable, Equatable, Hashable {

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// Approximate total number of story viewers found
    public let totalCount: Int

    /// Approximate total number of reactions set by found story viewers
    public let totalReactionCount: Int

    /// List of story viewers
    public let viewers: [StoryViewer]


    public init(
        nextOffset: String,
        totalCount: Int,
        totalReactionCount: Int,
        viewers: [StoryViewer]
    ) {
        self.nextOffset = nextOffset
        self.totalCount = totalCount
        self.totalReactionCount = totalReactionCount
        self.viewers = viewers
    }
}

