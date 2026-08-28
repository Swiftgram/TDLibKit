//
//  LoadChatWelcomeMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Loads welcome messages of a chat; requires can_send_welcome_messages administrator right in the chat. The loaded messages will be sent through updateChatWelcomeMessages
public struct LoadChatWelcomeMessages: Codable, Equatable, Hashable {

    /// The identifier of the chat
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

