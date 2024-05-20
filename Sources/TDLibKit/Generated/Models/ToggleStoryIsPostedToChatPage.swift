//
//  ToggleStoryIsPostedToChatPage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Toggles whether a story is accessible after expiration. Can be called only if story.can_toggle_is_posted_to_chat_page == true
public struct ToggleStoryIsPostedToChatPage: Codable, Equatable, Hashable {

    /// Pass true to make the story accessible after expiration; pass false to make it private
    public let isPostedToChatPage: Bool?

    /// Identifier of the story
    public let storyId: Int?

    /// Identifier of the chat that posted the story
    public let storySenderChatId: Int64?


    public init(
        isPostedToChatPage: Bool?,
        storyId: Int?,
        storySenderChatId: Int64?
    ) {
        self.isPostedToChatPage = isPostedToChatPage
        self.storyId = storyId
        self.storySenderChatId = storySenderChatId
    }
}

