//
//  UnreadReaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.53-bdec6af5
//  https://github.com/tdlib/td/tree/bdec6af5
//

import Foundation


/// Contains information about an unread reaction to a message
public struct UnreadReaction: Codable, Equatable, Hashable {

    /// True, if the reaction was added with a big animation
    public let isBig: Bool

    /// Identifier of the sender, added the reaction
    public let senderId: MessageSender

    /// Type of the reaction
    public let type: ReactionType


    public init(
        isBig: Bool,
        senderId: MessageSender,
        type: ReactionType
    ) {
        self.isBig = isBig
        self.senderId = senderId
        self.type = type
    }
}

