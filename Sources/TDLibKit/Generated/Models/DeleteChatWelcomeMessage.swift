//
//  DeleteChatWelcomeMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-fa8294b4
//  https://github.com/tdlib/td/tree/fa8294b4
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

