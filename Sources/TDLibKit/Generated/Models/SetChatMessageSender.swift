//
//  SetChatMessageSender.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.11-d4f5e672
//  https://github.com/tdlib/td/tree/d4f5e672
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

