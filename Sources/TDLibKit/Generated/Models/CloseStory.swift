//
//  CloseStory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Informs TDLib that a story is closed by the user
public struct CloseStory: Codable, Equatable, Hashable {

    /// The identifier of the story
    public let storyId: Int?

    /// The identifier of the poster of the story to close
    public let storyPosterChatId: Int64?


    public init(
        storyId: Int?,
        storyPosterChatId: Int64?
    ) {
        self.storyId = storyId
        self.storyPosterChatId = storyPosterChatId
    }
}

