//
//  StoryInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Contains basic information about a story
public struct StoryInfo: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the story was published
    public let date: Int

    /// True, if the story is available only to close friends
    public let isForCloseFriends: Bool

    /// Unique story identifier among stories of the chat
    public let storyId: Int


    public init(
        date: Int,
        isForCloseFriends: Bool,
        storyId: Int
    ) {
        self.date = date
        self.isForCloseFriends = isForCloseFriends
        self.storyId = storyId
    }
}

