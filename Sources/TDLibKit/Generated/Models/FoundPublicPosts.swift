//
//  FoundPublicPosts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
//

import Foundation


/// Contains a list of messages found by a public post search
public struct FoundPublicPosts: Codable, Equatable, Hashable {

    /// True, if the query has failed because search limits are exceeded. In this case search_limits.daily_free_query_count will be equal to 0
    public let areLimitsExceeded: Bool

    /// List of found public posts
    public let messages: [Message]

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// Updated public post search limits after the query; repeated requests with the same query will be free; may be null if they didn't change
    public let searchLimits: PublicPostSearchLimits?


    public init(
        areLimitsExceeded: Bool,
        messages: [Message],
        nextOffset: String,
        searchLimits: PublicPostSearchLimits?
    ) {
        self.areLimitsExceeded = areLimitsExceeded
        self.messages = messages
        self.nextOffset = nextOffset
        self.searchLimits = searchLimits
    }
}

