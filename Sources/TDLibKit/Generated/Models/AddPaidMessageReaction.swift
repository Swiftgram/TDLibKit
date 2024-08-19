//
//  AddPaidMessageReaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.35-9b6ff586
//  https://github.com/tdlib/td/tree/9b6ff586
//

import Foundation


/// Adds the paid message reaction to a message. Use getMessageAvailableReactions to receive the list of available reactions for the message
public struct AddPaidMessageReaction: Codable, Equatable, Hashable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64?

    /// Pass true to make paid reaction of the user on the message anonymous; pass false to make the user's profile visible among top reactors
    public let isAnonymous: Bool?

    /// Identifier of the message
    public let messageId: Int64?

    /// Number of Telegram Stars to be used for the reaction; 1-getOption("paid_reaction_star_count_max")
    public let starCount: Int64?


    public init(
        chatId: Int64?,
        isAnonymous: Bool?,
        messageId: Int64?,
        starCount: Int64?
    ) {
        self.chatId = chatId
        self.isAnonymous = isAnonymous
        self.messageId = messageId
        self.starCount = starCount
    }
}

