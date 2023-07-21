//
//  ForumTopics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-2e5319ff
//  https://github.com/tdlib/td/tree/2e5319ff
//

import Foundation


/// Describes a list of forum topics
public struct ForumTopics: Codable, Equatable, Hashable {

    /// Offset date for the next getForumTopics request
    public let nextOffsetDate: Int

    /// Offset message identifier for the next getForumTopics request
    public let nextOffsetMessageId: Int64

    /// Offset message thread identifier for the next getForumTopics request
    public let nextOffsetMessageThreadId: Int64

    /// List of forum topics
    public let topics: [ForumTopic]

    /// Approximate total number of forum topics found
    public let totalCount: Int


    public init(
        nextOffsetDate: Int,
        nextOffsetMessageId: Int64,
        nextOffsetMessageThreadId: Int64,
        topics: [ForumTopic],
        totalCount: Int
    ) {
        self.nextOffsetDate = nextOffsetDate
        self.nextOffsetMessageId = nextOffsetMessageId
        self.nextOffsetMessageThreadId = nextOffsetMessageThreadId
        self.topics = topics
        self.totalCount = totalCount
    }
}

