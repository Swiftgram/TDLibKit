//
//  SetChatMessageSender.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-a08b1f91
//  https://github.com/tdlib/td/tree/a08b1f91
//

import Foundation


/// Selects a message sender to send messages in a chat
public struct SetChatMessageSender: Codable, Equatable {

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

