//
//  ChatActiveStories.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Describes active stories posted by a chat
public struct ChatActiveStories: Codable, Equatable, Hashable {

    /// True, if the stories are shown in the main story list and can be archived; otherwise, the stories can be hidden from the main story list only by calling removeTopChat with topChatCategoryUsers and the chat_id. Stories of the current user can't be archived nor hidden using removeTopChat
    public let canBeArchived: Bool

    /// Identifier of the chat that posted the stories
    public let chatId: Int64

    /// Identifier of the story list in which the stories are shown; may be null if the stories aren't shown in a story list
    public let list: StoryList?

    /// Identifier of the last read active story
    public let maxReadStoryId: Int

    /// A parameter used to determine order of the stories in the story list; 0 if the stories doesn't need to be shown in the story list. Stories must be sorted by the pair (order, story_poster_chat_id) in descending order
    public let order: Int64

    /// Basic information about the stories; use getStory to get full information about the stories. The stories are in chronological order (i.e., in order of increasing story identifiers)
    public let stories: [StoryInfo]


    public init(
        canBeArchived: Bool,
        chatId: Int64,
        list: StoryList?,
        maxReadStoryId: Int,
        order: Int64,
        stories: [StoryInfo]
    ) {
        self.canBeArchived = canBeArchived
        self.chatId = chatId
        self.list = list
        self.maxReadStoryId = maxReadStoryId
        self.order = order
        self.stories = stories
    }
}

