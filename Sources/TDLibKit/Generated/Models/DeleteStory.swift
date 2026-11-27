//
//  DeleteStory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Deletes a previously posted story. Can be called only if story.can_be_deleted == true
public struct DeleteStory: Codable, Equatable, Hashable {

    /// Identifier of the story to delete
    public let storyId: Int?

    /// Identifier of the chat that posted the story
    public let storyPosterChatId: Int64?


    public init(
        storyId: Int?,
        storyPosterChatId: Int64?
    ) {
        self.storyId = storyId
        self.storyPosterChatId = storyPosterChatId
    }
}

