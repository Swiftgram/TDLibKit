//
//  SearchChatMembers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Searches for a specified query in the first name, last name and usernames of the members of a specified chat. Requires administrator rights if the chat is a channel
public struct SearchChatMembers: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// The type of users to search for; pass null to search among all chat members
    public let filter: ChatMembersFilter?

    /// The maximum number of users to be returned; up to 200
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

