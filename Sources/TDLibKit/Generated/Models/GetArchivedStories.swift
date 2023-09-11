//
//  GetArchivedStories.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.17-edb3d087
//  https://github.com/tdlib/td/tree/edb3d087
//

import Foundation


/// Returns the list of all stories of the current user. The stories are returned in a reverse chronological order (i.e., in order of decreasing story_id). For optimal performance, the number of returned stories is chosen by TDLib
public struct GetArchivedStories: Codable, Equatable, Hashable {

    /// Identifier of the story starting from which stories must be returned; use 0 to get results from the last story
    public let fromStoryId: Int?

    /// The maximum number of stories to be returned//-For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?


    public init(
        fromStoryId: Int?,
        limit: Int?
    ) {
        self.fromStoryId = fromStoryId
        self.limit = limit
    }
}

