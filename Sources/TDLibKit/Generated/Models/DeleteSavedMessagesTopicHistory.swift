//
//  DeleteSavedMessagesTopicHistory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.24-6c4804b5
//  https://github.com/tdlib/td/tree/6c4804b5
//

import Foundation


/// Deletes all messages in a Saved Messages topic
public struct DeleteSavedMessagesTopicHistory: Codable, Equatable, Hashable {

    /// Saved Messages topic which messages will be deleted
    public let savedMessagesTopic: SavedMessagesTopic?


    public init(savedMessagesTopic: SavedMessagesTopic?) {
        self.savedMessagesTopic = savedMessagesTopic
    }
}

