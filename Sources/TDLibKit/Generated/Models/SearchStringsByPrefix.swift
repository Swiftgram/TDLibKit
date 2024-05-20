//
//  SearchStringsByPrefix.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Searches specified query by word prefixes in the provided strings. Returns 0-based positions of strings that matched. Can be called synchronously
public struct SearchStringsByPrefix: Codable, Equatable, Hashable {

    /// The maximum number of objects to return
    public let limit: Int?

    /// Query to search for
    public let query: String?

    /// Pass true to receive no results for an empty query
    public let returnNoneForEmptyQuery: Bool?

    /// The strings to search in for the query
    public let strings: [String]?


    public init(
        limit: Int?,
        query: String?,
        returnNoneForEmptyQuery: Bool?,
        strings: [String]?
    ) {
        self.limit = limit
        self.query = query
        self.returnNoneForEmptyQuery = returnNoneForEmptyQuery
        self.strings = strings
    }
}

