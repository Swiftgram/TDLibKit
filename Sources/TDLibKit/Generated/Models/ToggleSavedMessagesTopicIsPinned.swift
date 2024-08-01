//
//  ToggleSavedMessagesTopicIsPinned.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.34-a24af099
//  https://github.com/tdlib/td/tree/a24af099
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

