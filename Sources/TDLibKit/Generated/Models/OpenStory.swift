//
//  OpenStory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-f1b75003
//  https://github.com/tdlib/td/tree/f1b75003
//

import Foundation


/// Informs TDLib that a story is opened and is being viewed by the user
public struct OpenStory: Codable, Equatable, Hashable {

    /// The identifier of the story
    public let storyId: Int?

    /// The identifier of the sender of the opened story
    public let storySenderChatId: Int64?


    public init(
        storyId: Int?,
        storySenderChatId: Int64?
    ) {
        self.storyId = storyId
        self.storySenderChatId = storySenderChatId
    }
}

