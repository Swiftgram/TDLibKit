//
//  SetChatMessageAutoDeleteTime.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Changes the message auto-delete or self-destruct (for secret chats) time in a chat. Requires change_info administrator right in basic groups, supergroups and channels Message auto-delete time can't be changed in a chat with the current user (Saved Messages) and the chat 777000 (Telegram).
public struct SetChatMessageAutoDeleteTime: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// New time value, in seconds; unless the chat is secret, it must be from 0 up to 365 * 86400 and be divisible by 86400. If 0, then messages aren't deleted automatically
    public let messageAutoDeleteTime: Int?


    public init(
        chatId: Int64?,
        messageAutoDeleteTime: Int?
    ) {
        self.chatId = chatId
        self.messageAutoDeleteTime = messageAutoDeleteTime
    }
}

