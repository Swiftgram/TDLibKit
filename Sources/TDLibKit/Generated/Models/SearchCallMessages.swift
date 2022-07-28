//
//  SearchCallMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Searches for call messages. Returns the results in reverse chronological order (i.e., in order of decreasing message_id). For optimal performance, the number of returned messages is chosen by TDLib
public struct SearchCallMessages: Codable, Equatable {

    /// Identifier of the message from which to search; use 0 to get results from the last message
    public let fromMessageId: Int64?

    /// The maximum number of messages to be returned; up to 100. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// Pass true to search only for messages with missed/declined calls
    public let onlyMissed: Bool?


    public init(
        fromMessageId: Int64?,
        limit: Int?,
        onlyMissed: Bool?
    ) {
        self.fromMessageId = fromMessageId
        self.limit = limit
        self.onlyMissed = onlyMissed
    }
}

