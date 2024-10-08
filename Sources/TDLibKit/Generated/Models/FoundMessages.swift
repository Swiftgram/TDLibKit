//
//  FoundMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-fe6f2f93
//  https://github.com/tdlib/td/tree/fe6f2f93
//

import Foundation


/// Contains a list of messages found by a search
public struct FoundMessages: Codable, Equatable, Hashable {

    /// List of messages
    public let messages: [Message]

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// Approximate total number of messages found; -1 if unknown
    public let totalCount: Int


    public init(
        messages: [Message],
        nextOffset: String,
        totalCount: Int
    ) {
        self.messages = messages
        self.nextOffset = nextOffset
        self.totalCount = totalCount
    }
}

