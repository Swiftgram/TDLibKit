//
//  CreateStoryAlbum.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.53-bdec6af5
//  https://github.com/tdlib/td/tree/bdec6af5
//

import Foundation


/// Creates an album of stories; requires can_edit_stories administrator right for supergroup and channel chats
public struct CreateStoryAlbum: Codable, Equatable, Hashable {

    /// Name of the album; 1-12 characters
    public let name: String?

    /// Identifiers of stories to add to the album; 0-getOption("story_album_story_count_max") identifiers
    public let storyIds: [Int]?

    /// Identifier of the chat that posted the stories
    public let storyPosterChatId: Int64?


    public init(
        name: String?,
        storyIds: [Int]?,
        storyPosterChatId: Int64?
    ) {
        self.name = name
        self.storyIds = storyIds
        self.storyPosterChatId = storyPosterChatId
    }
}

