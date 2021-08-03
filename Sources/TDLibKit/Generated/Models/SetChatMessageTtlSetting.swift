//
//  SetChatMessageTtlSetting.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Changes the message TTL setting (sets a new self-destruct timer) in a chat. Requires can_delete_messages administrator right in basic groups, supergroups and channels Message TTL setting of a chat with the current user (Saved Messages) and the chat 777000 (Telegram) can't be changed
public struct SetChatMessageTtlSetting: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// New TTL value, in seconds; must be one of 0, 86400, 7 * 86400, or 31 * 86400 unless the chat is secret
    public let ttl: Int


    public init(
        chatId: Int64,
        ttl: Int
    ) {
        self.chatId = chatId
        self.ttl = ttl
    }
}

