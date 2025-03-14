//
//  AddPendingPaidMessageReaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-b498497b
//  https://github.com/tdlib/td/tree/b498497b
//

import Foundation


/// Adds the paid message reaction to a message. Use getMessageAvailableReactions to check whether the reaction is available for the message
public struct AddPendingPaidMessageReaction: Codable, Equatable, Hashable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64?

    /// Identifier of the message
    public let messageId: Int64?

    /// Number of Telegram Stars to be used for the reaction. The total number of pending paid reactions must not exceed getOption("paid_reaction_star_count_max")
    public let starCount: Int64?

    /// Type of the paid reaction; pass null if the user didn't choose reaction type explicitly, for example, the reaction is set from the message bubble
    public let type: PaidReactionType?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        starCount: Int64?,
        type: PaidReactionType?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.starCount = starCount
        self.type = type
    }
}

