//
//  AddPendingPaidMessageReaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.36-91aa6c9e
//  https://github.com/tdlib/td/tree/91aa6c9e
//

import Foundation


/// Adds the paid message reaction to a message. Use getMessageAvailableReactions to check whether the reaction is available for the message
public struct AddPendingPaidMessageReaction: Codable, Equatable, Hashable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64?

    /// Pass true to make paid reaction of the user on the message anonymous; pass false to make the user's profile visible among top reactors. Ignored if use_default_is_anonymous == true
    public let isAnonymous: Bool?

    /// Identifier of the message
    public let messageId: Int64?

    /// Number of Telegram Stars to be used for the reaction. The total number of pending paid reactions must not exceed getOption("paid_reaction_star_count_max")
    public let starCount: Int64?

    /// Pass true if the user didn't choose anonymity explicitly, for example, the reaction is set from the message bubble
    public let useDefaultIsAnonymous: Bool?


    public init(
        chatId: Int64?,
        isAnonymous: Bool?,
        messageId: Int64?,
        starCount: Int64?,
        useDefaultIsAnonymous: Bool?
    ) {
        self.chatId = chatId
        self.isAnonymous = isAnonymous
        self.messageId = messageId
        self.starCount = starCount
        self.useDefaultIsAnonymous = useDefaultIsAnonymous
    }
}

