//
//  AddMessageReaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-53acb2b5
//  https://github.com/tdlib/td/tree/53acb2b5
//

import Foundation


/// Adds a reaction or a tag to a message. Use getMessageAvailableReactions to receive the list of available reactions for the message
public struct AddMessageReaction: Codable, Equatable, Hashable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64?

    /// Pass true if the reaction is added with a big animation
    public let isBig: Bool?

    /// Identifier of the message
    public let messageId: Int64?

    /// Type of the reaction to add. Use addPendingPaidMessageReaction instead to add the paid reaction
    public let reactionType: ReactionType?

    /// Pass true if the reaction needs to be added to recent reactions; tags are never added to the list of recent reactions
    public let updateRecentReactions: Bool?


    public init(
        chatId: Int64?,
        isBig: Bool?,
        messageId: Int64?,
        reactionType: ReactionType?,
        updateRecentReactions: Bool?
    ) {
        self.chatId = chatId
        self.isBig = isBig
        self.messageId = messageId
        self.reactionType = reactionType
        self.updateRecentReactions = updateRecentReactions
    }
}

