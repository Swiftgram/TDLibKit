//
//  UpgradeBasicGroupChatToSupergroupChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Creates a new supergroup from an existing basic group and sends a corresponding messageChatUpgradeTo and messageChatUpgradeFrom; requires creator privileges. Deactivates the original basic group
public struct UpgradeBasicGroupChatToSupergroupChat: Codable {

    /// Identifier of the chat to upgrade
    public let chatId: Int64


    public init(chatId: Int64) {
        self.chatId = chatId
    }
}

