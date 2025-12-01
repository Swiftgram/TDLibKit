//
//  GetStoryAlbumStories.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
//

import Foundation


/// Returns the list of stories added to the given story album. For optimal performance, the number of returned stories is chosen by TDLib
public struct GetStoryAlbumStories: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// The maximum number of stories to be returned. For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// Offset of the first entry to return; use 0 to get results from the first album story
    public let offset: Int?

    /// Story album identifier
    public let storyAlbumId: Int?


    public init(
        chatId: Int64?,
        limit: Int?,
        offset: Int?,
        storyAlbumId: Int?
    ) {
        self.chatId = chatId
        self.limit = limit
        self.offset = offset
        self.storyAlbumId = storyAlbumId
    }
}

