//
//  ToggleSavedMessagesTopicIsPinned.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.24-d79bd4b6
//  https://github.com/tdlib/td/tree/d79bd4b6
//

import Foundation


/// Changes the pinned state of a Saved Messages topic. There can be up to getOption("pinned_saved_messages_topic_count_max") pinned topics. The limit can be increased with Telegram Premium
public struct ToggleSavedMessagesTopicIsPinned: Codable, Equatable, Hashable {

    /// Pass true to pin the topic; pass false to unpin it
    public let isPinned: Bool?

    /// Saved Messages topic to pin or unpin
    public let savedMessagesTopic: SavedMessagesTopic?


    public init(
        isPinned: Bool?,
        savedMessagesTopic: SavedMessagesTopic?
    ) {
        self.isPinned = isPinned
        self.savedMessagesTopic = savedMessagesTopic
    }
}

