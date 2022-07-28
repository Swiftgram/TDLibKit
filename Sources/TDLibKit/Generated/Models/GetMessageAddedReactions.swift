//
//  GetMessageAddedReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Returns reactions added for a message, along with their sender
public struct GetMessageAddedReactions: Codable, Equatable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64?

    /// The maximum number of reactions to be returned; must be positive and can't be greater than 100
    public let limit: Int?

    /// Identifier of the message
    public let messageId: Int64?

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?

    /// If non-empty, only added reactions with the specified text representation will be returned
    public let reaction: String?


    public init(
        chatId: Int64?,
        limit: Int?,
        messageId: Int64?,
        offset: String?,
        reaction: String?
    ) {
        self.chatId = chatId
        self.limit = limit
        self.messageId = messageId
        self.offset = offset
        self.reaction = reaction
    }
}

