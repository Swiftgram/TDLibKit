//
//  GetRepliedMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.20-dd77e462
//  https://github.com/tdlib/td/tree/dd77e462
//

import Foundation


/// Returns information about a message that is replied by a given message. Also, returns the pinned message, the game message, the invoice message, and the topic creation message for messages of the types messagePinMessage, messageGameScore, messagePaymentSuccessful, messageChatSetBackground and topic messages without replied message respectively
public struct GetRepliedMessage: Codable, Equatable, Hashable {

    /// Identifier of the chat the message belongs to
    public let chatId: Int64?

    /// Identifier of the reply message
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

