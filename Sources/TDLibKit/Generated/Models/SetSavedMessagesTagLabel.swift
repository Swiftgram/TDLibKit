//
//  SetSavedMessagesTagLabel.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-a03a9047
//  https://github.com/tdlib/td/tree/a03a9047
//

import Foundation


/// Changes label of a Saved Messages tag; for Telegram Premium users only
public struct SetSavedMessagesTagLabel: Codable, Equatable, Hashable {

    /// New label for the tag; 0-12 characters
    public let label: String?

    /// The tag which label will be changed
    public let tag: ReactionType?


    public init(
        label: String?,
        tag: ReactionType?
    ) {
        self.label = label
        self.tag = tag
    }
}

