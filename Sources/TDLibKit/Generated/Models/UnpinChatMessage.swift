//
//  UnpinChatMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-906d773d
//  https://github.com/tdlib/td/tree/906d773d
//

import Foundation


/// Removes a pinned message from a chat; requires can_pin_messages rights in the group or can_edit_messages rights in the channel
public struct UnpinChatMessage: Codable, Equatable {

    /// Identifier of the chat
    public let chatId: Int64?

    /// Identifier of the removed pinned message
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

