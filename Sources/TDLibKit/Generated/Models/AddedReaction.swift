//
//  AddedReaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.35-9b6ff586
//  https://github.com/tdlib/td/tree/9b6ff586
//

import Foundation


/// Represents a reaction applied to a message
public struct AddedReaction: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the reaction was added
    public let date: Int

    /// True, if the reaction was added by the current user
    public let isOutgoing: Bool

    /// Identifier of the chat member, applied the reaction
    public let senderId: MessageSender

    /// Type of the reaction
    public let type: ReactionType


    public init(
        date: Int,
        isOutgoing: Bool,
        senderId: MessageSender,
        type: ReactionType
    ) {
        self.date = date
        self.isOutgoing = isOutgoing
        self.senderId = senderId
        self.type = type
    }
}

