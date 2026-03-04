//
//  LoadActiveStories.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.62-af0cb1d3
//  https://github.com/tdlib/td/tree/af0cb1d3
//

import Foundation


/// Loads more active stories from a story list. The loaded stories will be sent through updates. Active stories are sorted by the pair (active_stories.order, active_stories.story_poster_chat_id) in descending order. Returns a 404 error if all active stories have been loaded
public struct LoadActiveStories: Codable, Equatable, Hashable {

    /// The story list in which to load active stories
    public let storyList: StoryList?


    public init(storyList: StoryList?) {
        self.storyList = storyList
    }
}

