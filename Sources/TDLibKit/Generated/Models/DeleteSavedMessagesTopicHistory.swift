//
//  DeleteSavedMessagesTopicHistory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Deletes all messages in a Saved Messages topic
public struct DeleteSavedMessagesTopicHistory: Codable, Equatable, Hashable {

    /// Identifier of the Saved Messages topic whose messages will be deleted
    public let savedMessagesTopicId: Int64?


    public init(savedMessagesTopicId: Int64?) {
        self.savedMessagesTopicId = savedMessagesTopicId
    }
}

