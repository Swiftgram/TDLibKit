//
//  SearchContacts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.32-35cfcf5d
//  https://github.com/tdlib/td/tree/35cfcf5d
//

import Foundation


/// Searches for the specified query in the first names, last names and usernames of the known user contacts
public struct SearchContacts: Codable, Equatable, Hashable {

    /// The maximum number of users to be returned
    public let limit: Int?

    /// Query to search for; may be empty to return all contacts
    public let query: String?


    public init(
        limit: Int?,
        query: String?
    ) {
        self.limit = limit
        self.query = query
    }
}

