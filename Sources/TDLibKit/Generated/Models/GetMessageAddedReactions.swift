//
//  GetMessageAddedReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6c8bfbb5
//  https://github.com/tdlib/td/tree/6c8bfbb5
//

import Foundation


/// Returns reactions added for a message, along with their sender
public struct GetMessageAddedReactions: Codable, Equatable, Hashable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64?

    /// The maximum number of reactions to be returned; must be positive and can't be greater than 100
    public let limit: Int?

    /// Identifier of the message. Use message.interaction_info.reactions.can_get_added_reactions to check whether added reactions can be received for the message
    public let messageId: Int64?

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?

    /// Type of the reactions to return; pass null to return all added reactions; reactionTypePaid isn't supported
    public let reactionType: ReactionType?


    public init(
        chatId: Int64?,
        limit: Int?,
        messageId: Int64?,
        offset: String?,
        reactionType: ReactionType?
    ) {
        self.chatId = chatId
        self.limit = limit
        self.messageId = messageId
        self.offset = offset
        self.reactionType = reactionType
    }
}

