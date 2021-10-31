//
//  DeleteChatMessagesFromUser.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-f4d20e20
//  https://github.com/tdlib/td/tree/f4d20e20
//

import Foundation


/// Deletes all messages sent by the specified user to a chat. Supported only for supergroups; requires can_delete_messages administrator privileges
public struct DeleteChatMessagesFromUser: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// User identifier
    public let userId: Int64?


    public init(
        chatId: Int64?,
        userId: Int64?
    ) {
        self.chatId = chatId
        self.userId = userId
    }
}

