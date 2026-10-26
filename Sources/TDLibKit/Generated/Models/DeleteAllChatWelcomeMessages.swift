//
//  DeleteAllChatWelcomeMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ea3f69ce
//  https://github.com/tdlib/td/tree/ea3f69ce
//

import Foundation


/// Deletes all welcome messages of a chat; requires can_send_welcome_messages administrator right in the chat
public struct DeleteAllChatWelcomeMessages: Codable, Equatable, Hashable {

    /// The identifier of the chat
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

