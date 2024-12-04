//
//  UnpinAllMessageThreadMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-eb98bbe6
//  https://github.com/tdlib/td/tree/eb98bbe6
//

import Foundation


/// Removes all pinned messages from a forum topic; requires can_pin_messages member right in the supergroup
public struct UnpinAllMessageThreadMessages: Codable, Equatable, Hashable {

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

