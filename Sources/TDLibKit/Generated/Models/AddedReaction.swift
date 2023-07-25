//
//  AddedReaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-8893dc80
//  https://github.com/tdlib/td/tree/8893dc80
//

import Foundation


/// Represents a reaction applied to a message
public struct AddedReaction: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the reaction was added
    public let date: Int

    /// Identifier of the chat member, applied the reaction
    public let senderId: MessageSender

    /// Type of the reaction
    public let type: ReactionType


    public init(
        date: Int,
        senderId: MessageSender,
        type: ReactionType
    ) {
        self.date = date
        self.senderId = senderId
        self.type = type
    }
}

