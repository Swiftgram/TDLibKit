//
//  DeleteSavedMessagesTopicHistory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-e133ac6d
//  https://github.com/tdlib/td/tree/e133ac6d
//

import Foundation


/// Deletes all messages in a Saved Messages topic
public struct DeleteSavedMessagesTopicHistory: Codable, Equatable, Hashable {

    /// Identifier of Saved Messages topic which messages will be deleted
    public let savedMessagesTopicId: Int64?


    public init(savedMessagesTopicId: Int64?) {
        self.savedMessagesTopicId = savedMessagesTopicId
    }
}

