//
//  DeleteStory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Deletes a previously sent story. Can be called only if story.can_be_deleted == true
public struct DeleteStory: Codable, Equatable, Hashable {

    /// Identifier of the story to delete
    public let storyId: Int?

    /// Identifier of the chat that posted the story
    public let storySenderChatId: Int64?


    public init(
        storyId: Int?,
        storySenderChatId: Int64?
    ) {
        self.storyId = storyId
        self.storySenderChatId = storySenderChatId
    }
}

