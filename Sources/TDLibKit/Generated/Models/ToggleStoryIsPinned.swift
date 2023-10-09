//
//  ToggleStoryIsPinned.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-986f1ab4
//  https://github.com/tdlib/td/tree/986f1ab4
//

import Foundation


/// Toggles whether a story is accessible after expiration. Can be called only if story.can_toggle_is_pinned == true
public struct ToggleStoryIsPinned: Codable, Equatable, Hashable {

    /// Pass true to make the story accessible after expiration; pass false to make it private
    public let isPinned: Bool?

    /// Identifier of the story
    public let storyId: Int?

    /// Identifier of the chat that posted the story
    public let storySenderChatId: Int64?


    public init(
        isPinned: Bool?,
        storyId: Int?,
        storySenderChatId: Int64?
    ) {
        self.isPinned = isPinned
        self.storyId = storyId
        self.storySenderChatId = storySenderChatId
    }
}

