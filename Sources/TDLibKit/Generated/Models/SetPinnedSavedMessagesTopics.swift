//
//  SetPinnedSavedMessagesTopics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.24-437c2d0c
//  https://github.com/tdlib/td/tree/437c2d0c
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

