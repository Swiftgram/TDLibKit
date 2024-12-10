//
//  SetChatMessageSender.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-437e7f9a
//  https://github.com/tdlib/td/tree/437e7f9a
//

import Foundation


/// Selects a message sender to send messages in a chat
public struct SetChatMessageSender: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// New message sender for the chat
    public let messageSenderId: MessageSender?


    public init(
        chatId: Int64?,
        messageSenderId: MessageSender?
    ) {
        self.chatId = chatId
        self.messageSenderId = messageSenderId
    }
}

