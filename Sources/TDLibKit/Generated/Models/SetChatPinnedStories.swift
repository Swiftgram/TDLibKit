//
//  SetChatPinnedStories.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Changes the list of pinned stories on a chat page; requires can_edit_stories right in the chat
public struct SetChatPinnedStories: Codable, Equatable, Hashable {

    /// Identifier of the chat that posted the stories
    public let chatId: Int64?

    /// New list of pinned stories. All stories must be posted to the chat page first. There can be up to getOption("pinned_story_count_max") pinned stories on a chat page
    public let storyIds: [Int]?


    public init(
        chatId: Int64?,
        storyIds: [Int]?
    ) {
        self.chatId = chatId
        self.storyIds = storyIds
    }
}

