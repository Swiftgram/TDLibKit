//
//  SetChatAvailableReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Changes reactions available in a chat. Available in basic groups, supergroups, and channels. Requires can_change_info member right
public struct SetChatAvailableReactions: Codable, Equatable, Hashable {

    /// Reactions available in the chat. All explicitly specified emoji reactions must be active. In channel chats, up to the chat's boost level custom emoji reactions can be explicitly specified
    public let availableReactions: ChatAvailableReactions?

    /// Identifier of the chat
    public let chatId: Int64?


    public init(
        availableReactions: ChatAvailableReactions?,
        chatId: Int64?
    ) {
        self.availableReactions = availableReactions
        self.chatId = chatId
    }
}

