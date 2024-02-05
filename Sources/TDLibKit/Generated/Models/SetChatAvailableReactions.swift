//
//  SetChatAvailableReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.24-d79bd4b6
//  https://github.com/tdlib/td/tree/d79bd4b6
//

import Foundation


/// Changes reactions, available in a chat. Available for basic groups, supergroups, and channels. Requires can_change_info administrator right
public struct SetChatAvailableReactions: Codable, Equatable, Hashable {

    /// Reactions available in the chat. All explicitly specified emoji reactions must be active. Up to the chat's boost level custom emoji reactions can be explicitly specified
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

