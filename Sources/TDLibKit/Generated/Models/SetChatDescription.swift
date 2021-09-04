//
//  SetChatDescription.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Changes information about a chat. Available for basic groups, supergroups, and channels. Requires can_change_info administrator right
public struct SetChatDescription: Codable {

    /// Identifier of the chat
    public let chatId: Int64

    public let description: String


    public init(
        chatId: Int64,
        description: String
    ) {
        self.chatId = chatId
        self.description = description
    }
}
