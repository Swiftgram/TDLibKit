//
//  SearchPublicStoriesByTag.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.32-2820a9d2
//  https://github.com/tdlib/td/tree/2820a9d2
//

import Foundation


/// Searches for public stories containing the given hashtag or cashtag. For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit
public struct SearchPublicStoriesByTag: Codable, Equatable, Hashable {

    /// The maximum number of stories to be returned; up to 100. For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?

    /// Hashtag or cashtag to search for
    public let tag: String?


    public init(
        limit: Int?,
        offset: String?,
        tag: String?
    ) {
        self.limit = limit
        self.offset = offset
        self.tag = tag
    }
}

