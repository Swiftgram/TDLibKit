//
//  SearchOutgoingDocumentMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Searches for outgoing messages with content of the type messageDocument in all chats except secret chats. Returns the results in reverse chronological order
public struct SearchOutgoingDocumentMessages: Codable, Equatable, Hashable {

    /// The maximum number of messages to be returned; up to 100
    public let limit: Int?

    /// Query to search for in document file name and message caption
    public let query: String?


    public init(
        limit: Int?,
        query: String?
    ) {
        self.limit = limit
        self.query = query
    }
}

