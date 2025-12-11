//
//  FoundStories.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Contains a list of stories found by a search
public struct FoundStories: Codable, Equatable, Hashable {

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// List of stories
    public let stories: [Story]

    /// Approximate total number of stories found
    public let totalCount: Int


    public init(
        nextOffset: String,
        stories: [Story],
        totalCount: Int
    ) {
        self.nextOffset = nextOffset
        self.stories = stories
        self.totalCount = totalCount
    }
}

