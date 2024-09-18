//
//  SetChatDescription.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.36-91aa6c9e
//  https://github.com/tdlib/td/tree/91aa6c9e
//

import Foundation


/// Changes information about a chat. Available for basic groups, supergroups, and channels. Requires can_change_info member right
public struct SetChatDescription: Codable, Equatable, Hashable {

    /// Identifier of the chat
    public let chatId: Int64?

    public let description: String?


    public init(
        chatId: Int64?,
        description: String?
    ) {
        self.chatId = chatId
        self.description = description
    }
}

