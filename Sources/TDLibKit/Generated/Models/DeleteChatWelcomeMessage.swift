//
//  DeleteChatWelcomeMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ea3f69ce
//  https://github.com/tdlib/td/tree/ea3f69ce
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

