//
//  UpgradeBasicGroupChatToSupergroupChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-51743dfd
//  https://github.com/tdlib/td/tree/51743dfd
//

import Foundation


/// Creates a new supergroup from an existing basic group and sends a corresponding messageChatUpgradeTo and messageChatUpgradeFrom; requires owner privileges. Deactivates the original basic group
public struct UpgradeBasicGroupChatToSupergroupChat: Codable, Equatable, Hashable {

    /// Identifier of the chat to upgrade
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

