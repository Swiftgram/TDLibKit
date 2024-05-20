//
//  GetSavedMessagesTopicHistory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns messages in a Saved Messages topic. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id)
public struct GetSavedMessagesTopicHistory: Codable, Equatable, Hashable {

    /// Identifier of the message starting from which messages must be fetched; use 0 to get results from the last message
    public let fromMessageId: Int64?

    /// The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than or equal to -offset. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// Specify 0 to get results from exactly the message from_message_id or a negative offset up to 99 to get additionally some newer messages
    public let offset: Int?

    /// Identifier of Saved Messages topic which messages will be fetched
    public let savedMessagesTopicId: Int64?


    public init(
        fromMessageId: Int64?,
        limit: Int?,
        offset: Int?,
        savedMessagesTopicId: Int64?
    ) {
        self.fromMessageId = fromMessageId
        self.limit = limit
        self.offset = offset
        self.savedMessagesTopicId = savedMessagesTopicId
    }
}

