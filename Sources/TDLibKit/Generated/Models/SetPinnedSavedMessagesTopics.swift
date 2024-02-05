//
//  SetPinnedSavedMessagesTopics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.24-d79bd4b6
//  https://github.com/tdlib/td/tree/d79bd4b6
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

