//
//  SearchSavedMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Searches for messages tagged by the given reaction and with the given words in the Saved Messages chat; for Telegram Premium users only. Returns the results in reverse chronological order, i.e. in order of decreasing message_id For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
public struct SearchSavedMessages: Codable, Equatable, Hashable {

    /// Identifier of the message starting from which messages must be fetched; use 0 to get results from the last message
    public let fromMessageId: Int64?

    /// The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than -offset. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// Specify 0 to get results from exactly the message from_message_id or a negative offset to get the specified message and some newer messages
    public let offset: Int?

    /// Query to search for
    public let query: String?

    /// If not 0, only messages in the specified Saved Messages topic will be considered; pass 0 to consider all messages
    public let savedMessagesTopicId: Int64?

    /// Tag to search for; pass null to return all suitable messages
    public let tag: ReactionType?


    public init(
        fromMessageId: Int64?,
        limit: Int?,
        offset: Int?,
        query: String?,
        savedMessagesTopicId: Int64?,
        tag: ReactionType?
    ) {
        self.fromMessageId = fromMessageId
        self.limit = limit
        self.offset = offset
        self.query = query
        self.savedMessagesTopicId = savedMessagesTopicId
        self.tag = tag
    }
}

