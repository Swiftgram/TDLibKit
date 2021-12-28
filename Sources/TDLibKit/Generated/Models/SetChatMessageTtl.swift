//
//  SetChatMessageTtl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.12-a6903023
//  https://github.com/tdlib/td/tree/a6903023
//

import Foundation


/// Changes the message TTL in a chat. Requires can_delete_messages administrator right in basic groups, supergroups and channels Message TTL can't be changed in a chat with the current user (Saved Messages) and the chat 777000 (Telegram)
public struct SetChatMessageTtl: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64?

    /// New TTL value, in seconds; must be one of 0, 86400, 7 * 86400, or 31 * 86400 unless the chat is secret
    public let ttl: Int?


    public init(
        chatId: Int64?,
        ttl: Int?
    ) {
        self.chatId = chatId
        self.ttl = ttl
    }
}

