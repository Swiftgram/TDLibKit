//
//  RemoveStoryAlbumStories.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Removes stories from an album. If the album is owned by a supergroup or a channel chat, then requires can_edit_stories administrator right in the chat. Returns the changed album
public struct RemoveStoryAlbumStories: Codable, Equatable, Hashable {

    /// Identifier of the chat that owns the stories
    public let chatId: Int64?

    /// Identifier of the story album
    public let storyAlbumId: Int?

    /// Identifier of the stories to remove from the album
    public let storyIds: [Int]?


    public init(
        chatId: Int64?,
        storyAlbumId: Int?,
        storyIds: [Int]?
    ) {
        self.chatId = chatId
        self.storyAlbumId = storyAlbumId
        self.storyIds = storyIds
    }
}

