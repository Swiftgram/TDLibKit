//
//  ForumTopics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
//

import Foundation


/// Describes a list of forum topics
public struct ForumTopics: Codable, Equatable, Hashable {

    /// Offset date for the next getForumTopics request
    public let nextOffsetDate: Int

    /// Offset forum topic identifier for the next getForumTopics request
    public let nextOffsetForumTopicId: Int

    /// Offset message identifier for the next getForumTopics request
    public let nextOffsetMessageId: Int64

    /// List of forum topics
    public let topics: [ForumTopic]

    /// Approximate total number of forum topics found
    public let totalCount: Int


    public init(
        nextOffsetDate: Int,
        nextOffsetForumTopicId: Int,
        nextOffsetMessageId: Int64,
        topics: [ForumTopic],
        totalCount: Int
    ) {
        self.nextOffsetDate = nextOffsetDate
        self.nextOffsetForumTopicId = nextOffsetForumTopicId
        self.nextOffsetMessageId = nextOffsetMessageId
        self.topics = topics
        self.totalCount = totalCount
    }
}

