//
//  SetPinnedSavedMessagesTopics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-e133ac6d
//  https://github.com/tdlib/td/tree/e133ac6d
//

import Foundation


/// Changes the order of pinned Saved Messages topics
public struct SetPinnedSavedMessagesTopics: Codable, Equatable, Hashable {

    /// Identifiers of the new pinned Saved Messages topics
    public let savedMessagesTopicIds: [Int64]?


    public init(savedMessagesTopicIds: [Int64]?) {
        self.savedMessagesTopicIds = savedMessagesTopicIds
    }
}

