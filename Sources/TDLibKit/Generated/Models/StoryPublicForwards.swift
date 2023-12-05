//
//  StoryPublicForwards.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-85c8c19b
//  https://github.com/tdlib/td/tree/85c8c19b
//

import Foundation


/// Represents a list of public forwards and reposts of a story
public struct StoryPublicForwards: Codable, Equatable, Hashable {

    /// List of found public forwards and reposts
    public let forwards: [StoryPublicForward]

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// Approximate total number of messages and stories found
    public let totalCount: Int


    public init(
        forwards: [StoryPublicForward],
        nextOffset: String,
        totalCount: Int
    ) {
        self.forwards = forwards
        self.nextOffset = nextOffset
        self.totalCount = totalCount
    }
}

