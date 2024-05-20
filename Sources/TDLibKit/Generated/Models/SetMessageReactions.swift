//
//  SetMessageReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Sets reactions on a message; for bots only
public struct SetMessageReactions: Codable, Equatable, Hashable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64?

    /// Pass true if the reactions are added with a big animation
    public let isBig: Bool?

    /// Identifier of the message
    public let messageId: Int64?

    /// Types of the reaction to set
    public let reactionTypes: [ReactionType]?


    public init(
        chatId: Int64?,
        isBig: Bool?,
        messageId: Int64?,
        reactionTypes: [ReactionType]?
    ) {
        self.chatId = chatId
        self.isBig = isBig
        self.messageId = messageId
        self.reactionTypes = reactionTypes
    }
}

