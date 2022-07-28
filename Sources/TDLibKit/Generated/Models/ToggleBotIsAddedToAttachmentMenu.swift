//
//  ToggleBotIsAddedToAttachmentMenu.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Adds or removes a bot to attachment menu. Bot can be added to attachment menu, only if userTypeBot.can_be_added_to_attachment_menu == true
public struct ToggleBotIsAddedToAttachmentMenu: Codable, Equatable {

    /// Bot's user identifier
    public let botUserId: Int64?

    /// Pass true to add the bot to attachment menu; pass false to remove the bot from attachment menu
    public let isAdded: Bool?


    public init(
        botUserId: Int64?,
        isAdded: Bool?
    ) {
        self.botUserId = botUserId
        self.isAdded = isAdded
    }
}

