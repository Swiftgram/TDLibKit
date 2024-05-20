//
//  SearchSecretMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Searches for messages in secret chats. Returns the results in reverse chronological order. For optimal performance, the number of returned messages is chosen by TDLib
public struct SearchSecretMessages: Codable, Equatable, Hashable {

    /// Identifier of the chat in which to search. Specify 0 to search in all secret chats
    public let chatId: Int64?

    /// Additional filter for messages to search; pass null to search for all messages
    public let filter: SearchMessagesFilter?

    /// The maximum number of messages to be returned; up to 100. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?

    /// Query to search for. If empty, searchChatMessages must be used instead
    public let query: String?


    public init(
        chatId: Int64?,
        filter: SearchMessagesFilter?,
        limit: Int?,
        offset: String?,
        query: String?
    ) {
        self.chatId = chatId
        self.filter = filter
        self.limit = limit
        self.offset = offset
        self.query = query
    }
}

