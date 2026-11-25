//
//  DeleteChatMessagesBySender.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Deletes all messages sent by the specified message sender in a chat. Supported only for supergroups; requires can_delete_messages administrator right
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

