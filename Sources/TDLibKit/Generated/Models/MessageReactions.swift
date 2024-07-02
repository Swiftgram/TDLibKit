//
//  MessageReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.32-35cfcf5d
//  https://github.com/tdlib/td/tree/35cfcf5d
//

import Foundation


/// Contains a list of reactions added to a message
public struct MessageReactions: Codable, Equatable, Hashable {

    /// True, if the reactions are tags and Telegram Premium users can filter messages by them
    public let areTags: Bool

    /// List of added reactions
    public let reactions: [MessageReaction]


    public init(
        areTags: Bool,
        reactions: [MessageReaction]
    ) {
        self.areTags = areTags
        self.reactions = reactions
    }
}

