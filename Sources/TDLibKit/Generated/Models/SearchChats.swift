//
//  SearchChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Searches for the specified query in the title and username of already known chats. This is an offline method. Returns chats in the order seen in the main chat list
public struct SearchChats: Codable, Equatable, Hashable {

    /// The maximum number of chats to be returned
    public let limit: Int?

    /// Query to search for. If the query is empty, returns up to 50 recently found chats
    public let query: String?


    public init(
        limit: Int?,
        query: String?
    ) {
        self.limit = limit
        self.query = query
    }
}

