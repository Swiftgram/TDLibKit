//
//  ReadBusinessMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Reads a message on behalf of a business account; for bots only
public struct ReadBusinessMessage: Codable, Equatable, Hashable {

    /// Unique identifier of business connection through which the message was received
    public let businessConnectionId: String?

    /// The chat the message belongs to
    public let chatId: Int64?

    /// Identifier of the message
    public let messageId: Int64?


    public init(
        businessConnectionId: String?,
        chatId: Int64?,
        messageId: Int64?
    ) {
        self.businessConnectionId = businessConnectionId
        self.chatId = chatId
        self.messageId = messageId
    }
}

