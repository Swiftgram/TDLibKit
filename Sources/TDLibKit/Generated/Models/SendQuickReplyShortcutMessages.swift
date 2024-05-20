//
//  SendQuickReplyShortcutMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Sends messages from a quick reply shortcut. Requires Telegram Business subscription
public struct SendQuickReplyShortcutMessages: Codable, Equatable, Hashable {

    /// Identifier of the chat to which to send messages. The chat must be a private chat with a regular user
    public let chatId: Int64?

    /// Non-persistent identifier, which will be returned back in messageSendingStatePending object and can be used to match sent messages and corresponding updateNewMessage updates
    public let sendingId: Int?

    /// Unique identifier of the quick reply shortcut
    public let shortcutId: Int?


    public init(
        chatId: Int64?,
        sendingId: Int?,
        shortcutId: Int?
    ) {
        self.chatId = chatId
        self.sendingId = sendingId
        self.shortcutId = shortcutId
    }
}

