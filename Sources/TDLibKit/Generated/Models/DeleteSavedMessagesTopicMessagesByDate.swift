//
//  DeleteSavedMessagesTopicMessagesByDate.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Deletes all messages between the specified dates in a Saved Messages topic. Messages sent in the last 30 seconds will not be deleted
public struct DeleteSavedMessagesTopicMessagesByDate: Codable, Equatable, Hashable {

    /// The maximum date of the messages to delete
    public let maxDate: Int?

    /// The minimum date of the messages to delete
    public let minDate: Int?

    /// Identifier of Saved Messages topic which messages will be deleted
    public let savedMessagesTopicId: Int64?


    public init(
        maxDate: Int?,
        minDate: Int?,
        savedMessagesTopicId: Int64?
    ) {
        self.maxDate = maxDate
        self.minDate = minDate
        self.savedMessagesTopicId = savedMessagesTopicId
    }
}

