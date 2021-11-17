//
//  UnpinAllChatMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4e802d67
//  https://github.com/tdlib/td/tree/4e802d67
//

import Foundation


/// Removes all pinned messages from a chat; requires can_pin_messages rights in the group or can_edit_messages rights in the channel
public struct UnpinAllChatMessages: Codable {

    /// Identifier of the chat
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

