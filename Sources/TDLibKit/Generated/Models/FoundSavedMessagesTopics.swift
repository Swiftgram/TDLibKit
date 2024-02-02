//
//  FoundSavedMessagesTopics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.24-6c4804b5
//  https://github.com/tdlib/td/tree/6c4804b5
//

import Foundation


/// Contains a list of Saved Messages topics
public struct FoundSavedMessagesTopics: Codable, Equatable, Hashable {

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// List of Saved Messages topics
    public let topics: [FoundSavedMessagesTopic]

    /// Total number of Saved Messages topics found
    public let totalCount: Int


    public init(
        nextOffset: String,
        topics: [FoundSavedMessagesTopic],
        totalCount: Int
    ) {
        self.nextOffset = nextOffset
        self.topics = topics
        self.totalCount = totalCount
    }
}

