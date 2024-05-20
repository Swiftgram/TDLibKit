//
//  FoundChatMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains a list of messages found by a search in a given chat
public struct FoundChatMessages: Codable, Equatable, Hashable {

    /// List of messages
    public let messages: [Message]

    /// The offset for the next request. If 0, there are no more results
    public let nextFromMessageId: Int64

    /// Approximate total number of messages found; -1 if unknown
    public let totalCount: Int


    public init(
        messages: [Message],
        nextFromMessageId: Int64,
        totalCount: Int
    ) {
        self.messages = messages
        self.nextFromMessageId = nextFromMessageId
        self.totalCount = totalCount
    }
}

