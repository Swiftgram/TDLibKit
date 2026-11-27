//
//  CheckChatUsername.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Checks whether a username can be set for a chat
public struct CheckChatUsername: Codable, Equatable, Hashable {

    /// Chat identifier; must be an identifier of a supergroup chat, or a channel chat, or a private chat with self, or 0 if the chat is being created
    public let chatId: Int64?

    /// Username to be checked
    public let username: String?


    public init(
        chatId: Int64?,
        username: String?
    ) {
        self.chatId = chatId
        self.username = username
    }
}

