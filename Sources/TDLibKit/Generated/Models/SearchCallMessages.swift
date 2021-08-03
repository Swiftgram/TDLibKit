//
//  SearchCallMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Searches for call messages. Returns the results in reverse chronological order (i. e., in order of decreasing message_id). For optimal performance the number of returned messages is chosen by the library
public struct SearchCallMessages: Codable {

    /// Identifier of the message from which to search; use 0 to get results from the last message
    public let fromMessageId: Int64

    /// The maximum number of messages to be returned; up to 100. Fewer messages may be returned than specified by the limit, even if the end of the message history has not been reached
    public let limit: Int

    /// If true, returns only messages with missed calls
    public let onlyMissed: Bool


    public init(
        fromMessageId: Int64,
        limit: Int,
        onlyMissed: Bool
    ) {
        self.fromMessageId = fromMessageId
        self.limit = limit
        self.onlyMissed = onlyMissed
    }
}

