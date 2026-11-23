//
//  ToggleBotIsAddedToAttachmentMenu.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
//

import Foundation


/// Adds a bot to or removes it from the attachment and side menus. The bot can be added to the menus only if userTypeBot.can_be_added_to_attachment_menu == true
public struct ToggleBotIsAddedToAttachmentMenu: Codable, Equatable, Hashable {

    /// Pass true if the current user allowed the bot to send them messages. Ignored if is_added is false
    public let allowWriteAccess: Bool?

    /// Bot's user identifier
    public let botUserId: Int64?

    /// Pass true to add the bot to the attachment menu; pass false to remove the bot from the attachment menu
    public let isAdded: Bool?


    public init(
        allowWriteAccess: Bool?,
        botUserId: Int64?,
        isAdded: Bool?
    ) {
        self.allowWriteAccess = allowWriteAccess
        self.botUserId = botUserId
        self.isAdded = isAdded
    }
}

