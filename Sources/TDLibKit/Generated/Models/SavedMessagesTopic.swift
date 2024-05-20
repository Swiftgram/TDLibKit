//
//  SavedMessagesTopic.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about a Saved Messages topic
public struct SavedMessagesTopic: Codable, Equatable, Hashable, Identifiable {

    /// A draft of a message in the topic; may be null if none
    public let draftMessage: DraftMessage?

    /// Unique topic identifier
    public let id: Int64

    /// True, if the topic is pinned
    public let isPinned: Bool

    /// Last message in the topic; may be null if none or unknown
    public let lastMessage: Message?

    /// A parameter used to determine order of the topic in the topic list. Topics must be sorted by the order in descending order
    public let order: TdInt64

    /// Type of the topic
    public let type: SavedMessagesTopicType


    public init(
        draftMessage: DraftMessage?,
        id: Int64,
        isPinned: Bool,
        lastMessage: Message?,
        order: TdInt64,
        type: SavedMessagesTopicType
    ) {
        self.draftMessage = draftMessage
        self.id = id
        self.isPinned = isPinned
        self.lastMessage = lastMessage
        self.order = order
        self.type = type
    }
}

