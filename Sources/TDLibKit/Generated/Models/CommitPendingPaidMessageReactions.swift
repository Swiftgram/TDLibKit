//
//  CommitPendingPaidMessageReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.39-18618cad
//  https://github.com/tdlib/td/tree/18618cad
//

import Foundation


/// Applies all pending paid reactions on a message
public struct CommitPendingPaidMessageReactions: Codable, Equatable, Hashable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64?

    /// Identifier of the message
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

