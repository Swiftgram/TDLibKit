//
//  DeleteMessageReactionsFromSender.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.64-49b3bcbb
//  https://github.com/tdlib/td/tree/49b3bcbb
//

import Foundation


/// Deletes all reactions added by the specified sender on a message
public struct DeleteMessageReactionsFromSender: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Identifier of the message containing the reactions. Use messageProperties.can_delete_reactions to check whether the method can be used for a message
    public let messageId: Int64?

    /// Identifier of the sender of reactions to delete
    public let senderId: MessageSender?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        senderId: MessageSender?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.senderId = senderId
    }
}

