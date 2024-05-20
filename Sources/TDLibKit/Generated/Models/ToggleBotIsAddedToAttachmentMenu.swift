//
//  ToggleBotIsAddedToAttachmentMenu.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Adds or removes a bot to attachment and side menu. Bot can be added to the menu, only if userTypeBot.can_be_added_to_attachment_menu == true
public struct ToggleBotIsAddedToAttachmentMenu: Codable, Equatable, Hashable {

    /// Pass true if the current user allowed the bot to send them messages. Ignored if is_added is false
    public let allowWriteAccess: Bool?

    /// Bot's user identifier
    public let botUserId: Int64?

    /// Pass true to add the bot to attachment menu; pass false to remove the bot from attachment menu
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

