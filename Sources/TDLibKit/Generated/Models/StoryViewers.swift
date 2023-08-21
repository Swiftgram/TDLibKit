//
//  StoryViewers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.16-4d1d22d6
//  https://github.com/tdlib/td/tree/4d1d22d6
//

import Foundation


/// Represents a list of story viewers
public struct StoryViewers: Codable, Equatable, Hashable {

    /// The offset for the next request. If empty, there are no more results
    public let nextOffset: String

    /// Approximate total number of story viewers found
    public let totalCount: Int

    /// List of story viewers
    public let viewers: [StoryViewer]


    public init(
        nextOffset: String,
        totalCount: Int,
        viewers: [StoryViewer]
    ) {
        self.nextOffset = nextOffset
        self.totalCount = totalCount
        self.viewers = viewers
    }
}

