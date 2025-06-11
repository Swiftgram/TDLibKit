//
//  GetMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-e133ac6d
//  https://github.com/tdlib/td/tree/e133ac6d
//

import Foundation


/// Returns information about a message. Returns a 404 error if the message doesn't exist
public struct GetMessage: Codable, Equatable, Hashable {

    /// Identifier of the chat the message belongs to
    public let chatId: Int64?

    /// Identifier of the message to get
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

