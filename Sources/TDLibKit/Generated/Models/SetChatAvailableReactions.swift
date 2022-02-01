//
//  SetChatAvailableReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.1-92c2a9c4
//  https://github.com/tdlib/td/tree/92c2a9c4
//

import Foundation


/// Changes reactions, available in a chat. Available for basic groups, supergroups, and channels. Requires can_change_info administrator right
public struct SetChatAvailableReactions: Codable, Equatable {

    /// New list of reactions, available in the chat. All reactions must be active and order of the reactions must be the same as in updateReactions
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

