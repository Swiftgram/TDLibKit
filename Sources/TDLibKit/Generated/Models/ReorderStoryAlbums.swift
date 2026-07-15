//
//  ReorderStoryAlbums.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-07d3a097
//  https://github.com/tdlib/td/tree/07d3a097
//

import Foundation


/// Changes order of story albums. If the albums are owned by a supergroup or a channel chat, then requires can_edit_stories administrator right in the chat
public struct ReorderStoryAlbums: Codable, Equatable, Hashable {

    /// Identifier of the chat that owns the stories
    public let chatId: Int64?

    /// New order of story albums
    public let storyAlbumIds: [Int]?


    public init(
        chatId: Int64?,
        storyAlbumIds: [Int]?
    ) {
        self.chatId = chatId
        self.storyAlbumIds = storyAlbumIds
    }
}

