//
//  FoundSavedMessagesTopic.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.24-6c4804b5
//  https://github.com/tdlib/td/tree/6c4804b5
//

import Foundation


/// Contains information about a found Saved Messages topic
public struct FoundSavedMessagesTopic: Codable, Equatable, Hashable {

    /// Last message in the topic; may be null if none or unknown
    public let lastMessage: Message?

    /// The topic
    public let topic: SavedMessagesTopic


    public init(
        lastMessage: Message?,
        topic: SavedMessagesTopic
    ) {
        self.lastMessage = lastMessage
        self.topic = topic
    }
}

