//
//  UnpinAllChatMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.35-8d08b34e
//  https://github.com/tdlib/td/tree/8d08b34e
//

import Foundation


/// Removes all pinned messages from a chat; requires can_pin_messages member right if the chat is a basic group or supergroup, or can_edit_messages administrator right if the chat is a channel
public struct UnpinAllChatMessages: Codable, Equatable, Hashable {

    /// Identifier of the chat
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

