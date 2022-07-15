//
//  UpgradeBasicGroupChatToSupergroupChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-0bdd15fe
//  https://github.com/tdlib/td/tree/0bdd15fe
//

import Foundation


/// Creates a new supergroup from an existing basic group and sends a corresponding messageChatUpgradeTo and messageChatUpgradeFrom; requires creator privileges. Deactivates the original basic group
public struct UpgradeBasicGroupChatToSupergroupChat: Codable, Equatable {

    /// Identifier of the chat to upgrade
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

