//
//  StoryFullId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-b498497b
//  https://github.com/tdlib/td/tree/b498497b
//

import Foundation


/// Contains identifier of a story along with identifier of its sender
public struct StoryFullId: Codable, Equatable, Hashable {

    /// Identifier of the chat that posted the story
    public let senderChatId: Int64

    /// Unique story identifier among stories of the given sender
    public let storyId: Int


    public init(
        senderChatId: Int64,
        storyId: Int
    ) {
        self.senderChatId = senderChatId
        self.storyId = storyId
    }
}

