//
//  CloseStory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Informs TDLib that a story is closed by the user
public struct CloseStory: Codable, Equatable, Hashable {

    /// The identifier of the story
    public let storyId: Int?

    /// The identifier of the sender of the story to close
    public let storySenderChatId: Int64?


    public init(
        storyId: Int?,
        storySenderChatId: Int64?
    ) {
        self.storyId = storyId
        self.storySenderChatId = storySenderChatId
    }
}

