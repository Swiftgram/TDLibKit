//
//  ReorderStoryAlbumStories.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Changes order of stories in an album. If the album is owned by a supergroup or a channel chat, then requires can_edit_stories administrator right in the chat. Returns the changed album
public struct ReorderStoryAlbumStories: Codable, Equatable, Hashable {

    /// Identifier of the chat that owns the stories
    public let chatId: Int64?

    /// Identifier of the story album
    public let storyAlbumId: Int?

    /// Identifier of the stories to move to the beginning of the album. All other stories are placed in the current order after the specified stories
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

