//
//  GetSavedMessagesTopicMessageByDate.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-fe6f2f93
//  https://github.com/tdlib/td/tree/fe6f2f93
//

import Foundation


/// Returns the last message sent in a Saved Messages topic no later than the specified date
public struct GetSavedMessagesTopicMessageByDate: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) relative to which to search for messages
    public let date: Int?

    /// Identifier of Saved Messages topic which message will be returned
    public let savedMessagesTopicId: Int64?


    public init(
        date: Int?,
        savedMessagesTopicId: Int64?
    ) {
        self.date = date
        self.savedMessagesTopicId = savedMessagesTopicId
    }
}

