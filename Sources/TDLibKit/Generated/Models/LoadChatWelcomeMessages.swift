//
//  LoadChatWelcomeMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-afbfb4d8
//  https://github.com/tdlib/td/tree/afbfb4d8
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

