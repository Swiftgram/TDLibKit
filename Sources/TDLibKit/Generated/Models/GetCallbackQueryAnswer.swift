//
//  GetCallbackQueryAnswer.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Sends a callback query to a bot and returns an answer. Returns an error with code 502 if the bot fails to answer the query before the query timeout expires
public struct GetCallbackQueryAnswer: Codable, Equatable, Hashable {

    /// Identifier of the chat with the message
    public let chatId: Int64?

    /// Identifier of the message from which the query originated. The message must not be scheduled
    public let messageId: Int64?

    /// Query payload
    public let payload: CallbackQueryPayload?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        payload: CallbackQueryPayload?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.payload = payload
    }
}

