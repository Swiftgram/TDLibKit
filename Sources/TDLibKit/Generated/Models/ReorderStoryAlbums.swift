//
//  ReorderStoryAlbums.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Changes the order of story albums. If the albums are owned by a supergroup or a channel chat, then requires can_edit_stories administrator right in the chat
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

