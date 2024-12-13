//
//  Stories.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-53acb2b5
//  https://github.com/tdlib/td/tree/53acb2b5
//

import Foundation


/// Represents a list of stories
public struct Stories: Codable, Equatable, Hashable {

    /// Identifiers of the pinned stories; returned only in getChatPostedToChatPageStories with from_story_id == 0
    public let pinnedStoryIds: [Int]

    /// The list of stories
    public let stories: [Story]

    /// Approximate total number of stories found
    public let totalCount: Int


    public init(
        pinnedStoryIds: [Int],
        stories: [Story],
        totalCount: Int
    ) {
        self.pinnedStoryIds = pinnedStoryIds
        self.stories = stories
        self.totalCount = totalCount
    }
}

