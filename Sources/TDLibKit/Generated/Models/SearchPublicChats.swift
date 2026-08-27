//
//  SearchPublicChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-ca58a8b2
//  https://github.com/tdlib/td/tree/ca58a8b2
//

import Foundation


/// Searches public chats by looking for specified query in their username and title. Currently, only private chats, supergroups and channels can be public. Returns a meaningful number of results. Excludes private chats with contacts and chats from the chat list from the results
public struct SearchPublicChats: Codable, Equatable, Hashable {

    /// Query to search for
    public let query: String?

    /// Additional filter for type of the chats to be returned; pass null to search for chats of all types
    public let typeFilter: SearchChatTypeFilter?


    public init(
        query: String?,
        typeFilter: SearchChatTypeFilter?
    ) {
        self.query = query
        self.typeFilter = typeFilter
    }
}

