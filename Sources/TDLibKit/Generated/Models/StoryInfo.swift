//
//  StoryInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Contains basic information about a story
public struct StoryInfo: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the story was published
    public let date: Int

    /// True, if the story is available only to close friends
    public let isForCloseFriends: Bool

    /// True, if the story is a live story
    public let isLive: Bool

    /// Unique story identifier among stories of the chat
    public let storyId: Int


    public init(
        date: Int,
        isForCloseFriends: Bool,
        isLive: Bool,
        storyId: Int
    ) {
        self.date = date
        self.isForCloseFriends = isForCloseFriends
        self.isLive = isLive
        self.storyId = storyId
    }
}

