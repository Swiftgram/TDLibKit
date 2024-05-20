//
//  RemoveMessageReaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Removes a reaction from a message. A chosen reaction can always be removed
public struct RemoveMessageReaction: Codable, Equatable, Hashable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64?

    /// Identifier of the message
    public let messageId: Int64?

    /// Type of the reaction to remove
    public let reactionType: ReactionType?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        reactionType: ReactionType?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.reactionType = reactionType
    }
}

