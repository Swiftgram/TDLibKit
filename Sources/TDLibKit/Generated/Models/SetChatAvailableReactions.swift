//
//  SetChatAvailableReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-e65c0827
//  https://github.com/tdlib/td/tree/e65c0827
//

import Foundation


/// Changes reactions, available in a chat. Available for basic groups, supergroups, and channels. Requires can_change_info administrator right
public struct SetChatAvailableReactions: Codable, Equatable {

    /// New list of reactions, available in the chat. All reactions must be active
    public let availableReactions: [String]?

    /// Identifier of the chat
    public let chatId: Int64?


    public init(
        availableReactions: [String]?,
        chatId: Int64?
    ) {
        self.availableReactions = availableReactions
        self.chatId = chatId
    }
}

