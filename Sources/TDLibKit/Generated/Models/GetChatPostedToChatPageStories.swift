//
//  GetChatPostedToChatPageStories.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-b498497b
//  https://github.com/tdlib/td/tree/b498497b
//

import Foundation


/// Returns the list of stories that posted by the given chat to its chat page. If from_story_id == 0, then pinned stories are returned first. Then, stories are returned in reverse chronological order (i.e., in order of decreasing story_id). For optimal performance, the number of returned stories is chosen by TDLib
public struct GetChatPostedToChatPageStories: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Identifier of the story starting from which stories must be returned; use 0 to get results from pinned and the newest story
    public let fromStoryId: Int?

    /// The maximum number of stories to be returned. For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?


    public init(
        chatId: Int64?,
        fromStoryId: Int?,
        limit: Int?
    ) {
        self.chatId = chatId
        self.fromStoryId = fromStoryId
        self.limit = limit
    }
}

