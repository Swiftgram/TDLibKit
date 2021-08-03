//
//  DeleteChatMessagesFromUser.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Deletes all messages sent by the specified user to a chat. Supported only for supergroups; requires can_delete_messages administrator privileges
public struct DeleteChatMessagesFromUser: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// User identifier
    public let userId: Int


    public init(
        chatId: Int64,
        userId: Int
    ) {
        self.chatId = chatId
        self.userId = userId
    }
}

