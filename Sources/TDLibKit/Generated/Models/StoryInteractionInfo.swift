//
//  StoryInteractionInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about interactions with a story
public struct StoryInteractionInfo: Codable, Equatable, Hashable {

    /// Number of times the story was forwarded; 0 if none or unknown
    public let forwardCount: Int

    /// Number of reactions added to the story; 0 if none or unknown
    public let reactionCount: Int

    /// Identifiers of at most 3 recent viewers of the story
    public let recentViewerUserIds: [Int64]

    /// Number of times the story was viewed
    public let viewCount: Int


    public init(
        forwardCount: Int,
        reactionCount: Int,
        recentViewerUserIds: [Int64],
        viewCount: Int
    ) {
        self.forwardCount = forwardCount
        self.reactionCount = reactionCount
        self.recentViewerUserIds = recentViewerUserIds
        self.viewCount = viewCount
    }
}

