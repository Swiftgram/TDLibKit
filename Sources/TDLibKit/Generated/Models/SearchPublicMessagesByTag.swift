//
//  SearchPublicMessagesByTag.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-b498497b
//  https://github.com/tdlib/td/tree/b498497b
//

import Foundation


/// Searches for public channel posts containing the given hashtag or cashtag. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
public struct SearchPublicMessagesByTag: Codable, Equatable, Hashable {

    /// The maximum number of messages to be returned; up to 100. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
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

