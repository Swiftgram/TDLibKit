//
//  DeleteChatWelcomeMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Deletes a welcome message of a chat; requires can_send_welcome_messages administrator right in the chat
public struct DeleteChatWelcomeMessage: Codable, Equatable, Hashable {

    /// The identifier of the chat
    public let chatId: Int64?

    /// The identifier of the welcome message
    public let welcomeMessageId: Int?


    public init(
        chatId: Int64?,
        welcomeMessageId: Int?
    ) {
        self.chatId = chatId
        self.welcomeMessageId = welcomeMessageId
    }
}

