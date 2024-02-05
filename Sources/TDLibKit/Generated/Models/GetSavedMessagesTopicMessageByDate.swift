//
//  GetSavedMessagesTopicMessageByDate.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.24-d79bd4b6
//  https://github.com/tdlib/td/tree/d79bd4b6
//

import Foundation


/// Returns the last message sent in a Saved Messages topic no later than the specified date
public struct GetSavedMessagesTopicMessageByDate: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) relative to which to search for messages
    public let date: Int?

    /// Saved Messages topic which message will be returned
    public let savedMessagesTopic: SavedMessagesTopic?


    public init(
        date: Int?,
        savedMessagesTopic: SavedMessagesTopic?
    ) {
        self.date = date
        self.savedMessagesTopic = savedMessagesTopic
    }
}

