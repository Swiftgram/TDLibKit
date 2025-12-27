//
//  SearchPublicPosts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Searches for public channel posts using the given query. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
public struct SearchPublicPosts: Codable, Equatable, Hashable {

    /// The maximum number of messages to be returned; up to 100. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?

    /// Query to search for
    public let query: String?

    /// The amount of Telegram Stars the user agreed to pay for the search; pass 0 for free searches
    public let starCount: Int64?


    public init(
        limit: Int?,
        offset: String?,
        query: String?,
        starCount: Int64?
    ) {
        self.limit = limit
        self.offset = offset
        self.query = query
        self.starCount = starCount
    }
}

