//
//  SetPinnedSavedMessagesTopics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.24-6c4804b5
//  https://github.com/tdlib/td/tree/6c4804b5
//

import Foundation


/// Changes the order of pinned Saved Messages topics
public struct SetPinnedSavedMessagesTopics: Codable, Equatable, Hashable {

    /// The new list of pinned Saved Messages topics
    public let savedMessagesTopics: [SavedMessagesTopic]?


    public init(savedMessagesTopics: [SavedMessagesTopic]?) {
        self.savedMessagesTopics = savedMessagesTopics
    }
}

