//
//  SearchPublicHashtagMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-4257a341
//  https://github.com/tdlib/td/tree/4257a341
//

import Foundation


/// Searches for public channel posts with the given hashtag or cashtag. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
public struct SearchPublicHashtagMessages: Codable, Equatable, Hashable {

    /// Hashtag or cashtag to search for
    public let hashtag: String?

    /// The maximum number of messages to be returned; up to 100. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?


    public init(
        hashtag: String?,
        limit: Int?,
        offset: String?
    ) {
        self.hashtag = hashtag
        self.limit = limit
        self.offset = offset
    }
}

