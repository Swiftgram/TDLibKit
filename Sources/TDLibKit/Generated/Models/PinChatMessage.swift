//
//  PinChatMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-c1fea0f2
//  https://github.com/tdlib/td/tree/c1fea0f2
//

import Foundation


/// Pins a message in a chat. A message can be pinned only if messageProperties.can_be_pinned
public struct PinChatMessage: Codable, Equatable, Hashable {

    /// Identifier of the chat
    public let chatId: Int64?

    /// Pass true to disable notification about the pinned message. Notifications are always disabled in channels and private chats
    public let disableNotification: Bool?

    /// Identifier of the new pinned message
    public let messageId: Int64?

    /// Pass true to pin the message only for self; private chats only
    public let onlyForSelf: Bool?


    public init(
        chatId: Int64?,
        disableNotification: Bool?,
        messageId: Int64?,
        onlyForSelf: Bool?
    ) {
        self.chatId = chatId
        self.disableNotification = disableNotification
        self.messageId = messageId
        self.onlyForSelf = onlyForSelf
    }
}

