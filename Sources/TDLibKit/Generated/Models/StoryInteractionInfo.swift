//
//  StoryInteractionInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-a7f8ff6e
//  https://github.com/tdlib/td/tree/a7f8ff6e
//

import Foundation


/// Contains information about interactions with a story
public struct StoryInteractionInfo: Codable, Equatable, Hashable {

    /// Identifiers of at most 3 recent viewers of the story
    public let recentViewerUserIds: [Int64]

    /// Number of times the story was viewed
    public let viewCount: Int


    public init(
        recentViewerUserIds: [Int64],
        viewCount: Int
    ) {
        self.recentViewerUserIds = recentViewerUserIds
        self.viewCount = viewCount
    }
}

