//
//  StoryFullId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-5c77c469
//  https://github.com/tdlib/td/tree/5c77c469
//

import Foundation


/// Contains identifier of a story along with identifier of the chat that posted it
public struct StoryFullId: Codable, Equatable, Hashable {

    /// Identifier of the chat that posted the story
    public let posterChatId: Int64

    /// Unique story identifier among stories of the chat
    public let storyId: Int


    public init(
        posterChatId: Int64,
        storyId: Int
    ) {
        self.posterChatId = posterChatId
        self.storyId = storyId
    }
}

