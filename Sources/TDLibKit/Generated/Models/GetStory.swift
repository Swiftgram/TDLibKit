//
//  GetStory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns a story
public struct GetStory: Codable, Equatable, Hashable {

    /// Pass true to get only locally available information without sending network requests
    public let onlyLocal: Bool?

    /// Story identifier
    public let storyId: Int?

    /// Identifier of the chat that posted the story
    public let storySenderChatId: Int64?


    public init(
        onlyLocal: Bool?,
        storyId: Int?,
        storySenderChatId: Int64?
    ) {
        self.onlyLocal = onlyLocal
        self.storyId = storyId
        self.storySenderChatId = storySenderChatId
    }
}

