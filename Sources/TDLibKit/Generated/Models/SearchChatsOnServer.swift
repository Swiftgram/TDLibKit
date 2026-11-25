//
//  SearchChatsOnServer.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Searches for the specified query in the title and username of already known chats via a request to the server. Returns chats in the order seen in the main chat list
public struct SearchChatsOnServer: Codable, Equatable, Hashable {

    /// The maximum number of chats to be returned
    public let limit: Int?

    /// Query to search for
    public let query: String?

    /// Additional filter for the type of the chats to be returned; pass null to search for chats of all types
    public let typeFilter: SearchChatTypeFilter?


    public init(
        limit: Int?,
        query: String?,
        typeFilter: SearchChatTypeFilter?
    ) {
        self.limit = limit
        self.query = query
        self.typeFilter = typeFilter
    }
}

