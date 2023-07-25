//
//  ToggleStoryIsPinned.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-8893dc80
//  https://github.com/tdlib/td/tree/8893dc80
//

import Foundation


/// Toggles whether a story is accessible after expiration
public struct ToggleStoryIsPinned: Codable, Equatable, Hashable {

    /// Pass true to make the story accessible after expiration; pass false to make it private
    public let isPinned: Bool?

    /// Identifier of the story
    public let storyId: Int?


    public init(
        isPinned: Bool?,
        storyId: Int?
    ) {
        self.isPinned = isPinned
        self.storyId = storyId
    }
}

