//
//  UnpinAllMessageThreadMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-5ed1d22d
//  https://github.com/tdlib/td/tree/5ed1d22d
//

import Foundation


/// Removes all pinned messages from a forum topic; requires can_pin_messages rights in the supergroup
public struct UnpinAllMessageThreadMessages: Codable, Equatable {

    /// Identifier of the chat
    public let chatId: Int64?

    /// Message thread identifier in which messages will be unpinned
    public let messageThreadId: Int64?


    public init(
        chatId: Int64?,
        messageThreadId: Int64?
    ) {
        self.chatId = chatId
        self.messageThreadId = messageThreadId
    }
}

