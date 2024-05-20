//
//  ChatActiveStories.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes active stories posted by a chat
public struct ChatActiveStories: Codable, Equatable, Hashable {

    /// Identifier of the chat that posted the stories
    public let chatId: Int64

    /// Identifier of the story list in which the stories are shown; may be null if the stories aren't shown in a story list
    public let list: StoryList?

    /// Identifier of the last read active story
    public let maxReadStoryId: Int

    /// A parameter used to determine order of the stories in the story list; 0 if the stories doesn't need to be shown in the story list. Stories must be sorted by the pair (order, story_sender_chat_id) in descending order
    public let order: Int64

    /// Basic information about the stories; use getStory to get full information about the stories. The stories are in a chronological order (i.e., in order of increasing story identifiers)
    public let stories: [StoryInfo]


    public init(
        chatId: Int64,
        list: StoryList?,
        maxReadStoryId: Int,
        order: Int64,
        stories: [StoryInfo]
    ) {
        self.chatId = chatId
        self.list = list
        self.maxReadStoryId = maxReadStoryId
        self.order = order
        self.stories = stories
    }
}

