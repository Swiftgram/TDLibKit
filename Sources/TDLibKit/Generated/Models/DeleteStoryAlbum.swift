//
//  DeleteStoryAlbum.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ea3f69ce
//  https://github.com/tdlib/td/tree/ea3f69ce
//

import Foundation


/// Deletes a story album. If the album is owned by a supergroup or a channel chat, then requires can_edit_stories administrator right in the chat
public struct DeleteStoryAlbum: Codable, Equatable, Hashable {

    /// Identifier of the chat that owns the stories
    public let chatId: Int64?

    /// Identifier of the story album
    public let storyAlbumId: Int?


    public init(
        chatId: Int64?,
        storyAlbumId: Int?
    ) {
        self.chatId = chatId
        self.storyAlbumId = storyAlbumId
    }
}

