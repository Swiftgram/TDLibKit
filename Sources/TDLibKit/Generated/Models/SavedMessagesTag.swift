//
//  SavedMessagesTag.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents a tag used in Saved Messages or a Saved Messages topic
public struct SavedMessagesTag: Codable, Equatable, Hashable {

    /// Number of times the tag was used; may be 0 if the tag has non-empty label
    public let count: Int

    /// Label of the tag; 0-12 characters. Always empty if the tag is returned for a Saved Messages topic
    public let label: String

    /// The tag
    public let tag: ReactionType


    public init(
        count: Int,
        label: String,
        tag: ReactionType
    ) {
        self.count = count
        self.label = label
        self.tag = tag
    }
}

