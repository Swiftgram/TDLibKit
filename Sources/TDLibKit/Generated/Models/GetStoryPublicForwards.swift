//
//  GetStoryPublicForwards.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns forwards of a story as a message to public chats and reposts by public channels. Can be used only if the story is posted on behalf of the current user or story.can_get_statistics == true. For optimal performance, the number of returned messages and stories is chosen by TDLib
public struct GetStoryPublicForwards: Codable, Equatable, Hashable {

    /// The maximum number of messages and stories to be returned; must be positive and can't be greater than 100. For optimal performance, the number of returned objects is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?

    /// The identifier of the story
    public let storyId: Int?

    /// The identifier of the sender of the story
    public let storySenderChatId: Int64?


    public init(
        limit: Int?,
        offset: String?,
        storyId: Int?,
        storySenderChatId: Int64?
    ) {
        self.limit = limit
        self.offset = offset
        self.storyId = storyId
        self.storySenderChatId = storySenderChatId
    }
}

