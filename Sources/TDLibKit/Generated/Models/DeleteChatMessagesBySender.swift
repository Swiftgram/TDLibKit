//
//  DeleteChatMessagesBySender.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-85c8c19b
//  https://github.com/tdlib/td/tree/85c8c19b
//

import Foundation


/// Deletes all messages sent by the specified message sender in a chat. Supported only for supergroups; requires can_delete_messages administrator privileges
public struct DeleteChatMessagesBySender: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Identifier of the sender of messages to delete
    public let senderId: MessageSender?


    public init(
        chatId: Int64?,
        senderId: MessageSender?
    ) {
        self.chatId = chatId
        self.senderId = senderId
    }
}

