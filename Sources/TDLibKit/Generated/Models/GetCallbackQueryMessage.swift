//
//  GetCallbackQueryMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns information about a message with the callback button that originated a callback query; for bots only
public struct GetCallbackQueryMessage: Codable, Equatable, Hashable {

    /// Identifier of the callback query
    public let callbackQueryId: TdInt64?

    /// Identifier of the chat the message belongs to
    public let chatId: Int64?

    /// Message identifier
    public let messageId: Int64?


    public init(
        callbackQueryId: TdInt64?,
        chatId: Int64?,
        messageId: Int64?
    ) {
        self.callbackQueryId = callbackQueryId
        self.chatId = chatId
        self.messageId = messageId
    }
}

