//
//  SetStoryAlbumName.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
//

import Foundation


/// Changes name of an album of stories. If the album is owned by a supergroup or a channel chat, then requires can_edit_stories administrator right in the chat. Returns the changed album
public struct SetStoryAlbumName: Codable, Equatable, Hashable {

    /// Identifier of the chat that owns the stories
    public let chatId: Int64?

    /// New name of the album; 1-12 characters
    public let name: String?

    /// Identifier of the story album
    public let storyAlbumId: Int?


    public init(
        chatId: Int64?,
        name: String?,
        storyAlbumId: Int?
    ) {
        self.chatId = chatId
        self.name = name
        self.storyAlbumId = storyAlbumId
    }
}

