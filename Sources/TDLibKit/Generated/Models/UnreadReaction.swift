//
//  UnreadReaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-1cace9e6
//  https://github.com/tdlib/td/tree/1cace9e6
//

import Foundation


/// Contains information about an unread reaction to a message
public struct UnreadReaction: Codable, Equatable {

    /// True, if the reaction was added with a big animation
    public let isBig: Bool

    /// Text representation of the reaction
    public let reaction: String

    /// Identifier of the sender, added the reaction
    public let senderId: MessageSender


    public init(
        isBig: Bool,
        reaction: String,
        senderId: MessageSender
    ) {
        self.isBig = isBig
        self.reaction = reaction
        self.senderId = senderId
    }
}

