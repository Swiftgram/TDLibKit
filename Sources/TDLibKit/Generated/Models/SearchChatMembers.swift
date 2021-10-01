//
//  SearchChatMembers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-5f19e026
//  https://github.com/tdlib/td/tree/5f19e026
//

import Foundation


/// Searches for a specified query in the first name, last name and username of the members of a specified chat. Requires administrator rights in channels
public struct SearchChatMembers: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// The type of users to search for; pass null to search among all chat members
    public let filter: ChatMembersFilter?

    /// The maximum number of users to be returned
    public let limit: Int?

    /// Query to search for
    public let query: String?


    public init(
        chatId: Int64?,
        filter: ChatMembersFilter?,
        limit: Int?,
        query: String?
    ) {
        self.chatId = chatId
        self.filter = filter
        self.limit = limit
        self.query = query
    }
}

