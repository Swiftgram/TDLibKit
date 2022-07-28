//
//  SetMessageReaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Changes chosen reaction for a message
public struct SetMessageReaction: Codable, Equatable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64?

    /// Pass true if the reaction is added with a big animation
    public let isBig: Bool?

    /// Identifier of the message
    public let messageId: Int64?

    /// Text representation of the new chosen reaction. Can be an empty string or the currently chosen non-big reaction to remove the reaction
    public let reaction: String?


    public init(
        chatId: Int64?,
        isBig: Bool?,
        messageId: Int64?,
        reaction: String?
    ) {
        self.chatId = chatId
        self.isBig = isBig
        self.messageId = messageId
        self.reaction = reaction
    }
}

