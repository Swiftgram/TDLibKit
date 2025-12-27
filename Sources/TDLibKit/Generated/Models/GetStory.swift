//
//  GetStory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Returns a story
public struct GetStory: Codable, Equatable, Hashable {

    /// Pass true to get only locally available information without sending network requests
    public let onlyLocal: Bool?

    /// Story identifier
    public let storyId: Int?

    /// Identifier of the chat that posted the story
    public let storyPosterChatId: Int64?


    public init(
        onlyLocal: Bool?,
        storyId: Int?,
        storyPosterChatId: Int64?
    ) {
        self.onlyLocal = onlyLocal
        self.storyId = storyId
        self.storyPosterChatId = storyPosterChatId
    }
}

