//
//  SearchCallMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Searches for call messages. Returns the results in reverse chronological order (i.e., in order of decreasing message_id). For optimal performance, the number of returned messages is chosen by TDLib
public struct SearchCallMessages: Codable, Equatable, Hashable {

    /// The maximum number of messages to be returned; up to 100. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?

    /// Pass true to search only for messages with missed/declined calls
    public let onlyMissed: Bool?


    public init(
        limit: Int?,
        offset: String?,
        onlyMissed: Bool?
    ) {
        self.limit = limit
        self.offset = offset
        self.onlyMissed = onlyMissed
    }
}

