//
//  ToggleSavedMessagesTopicIsPinned.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-64852808
//  https://github.com/tdlib/td/tree/64852808
//

import Foundation


/// Changes the pinned state of a Saved Messages topic. There can be up to getOption("pinned_saved_messages_topic_count_max") pinned topics. The limit can be increased with Telegram Premium
public struct ToggleSavedMessagesTopicIsPinned: Codable, Equatable, Hashable {

    /// Pass true to pin the topic; pass false to unpin it
    public let isPinned: Bool?

    /// Identifier of Saved Messages topic to pin or unpin
    public let savedMessagesTopicId: Int64?


    public init(
        isPinned: Bool?,
        savedMessagesTopicId: Int64?
    ) {
        self.isPinned = isPinned
        self.savedMessagesTopicId = savedMessagesTopicId
    }
}

