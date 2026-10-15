//
//  OpenStory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-5f9312dc
//  https://github.com/tdlib/td/tree/5f9312dc
//

import Foundation


/// Informs TDLib that a story is opened and is being viewed by the user
public struct OpenStory: Codable, Equatable, Hashable {

    /// The identifier of the story
    public let storyId: Int?

    /// The identifier of the chat that posted the opened story
    public let storyPosterChatId: Int64?


    public init(
        storyId: Int?,
        storyPosterChatId: Int64?
    ) {
        self.storyId = storyId
        self.storyPosterChatId = storyPosterChatId
    }
}

