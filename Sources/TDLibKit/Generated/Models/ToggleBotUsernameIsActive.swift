//
//  ToggleBotUsernameIsActive.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Changes active state for a username of a bot. The editable username can't be disabled. May return an error with a message "USERNAMES_ACTIVE_TOO_MUCH" if the maximum number of active usernames has been reached. Can be called only if userTypeBot.can_be_edited == true
public struct ToggleBotUsernameIsActive: Codable, Equatable, Hashable {

    /// Identifier of the target bot
    public let botUserId: Int64?

    /// Pass true to activate the username; pass false to disable it
    public let isActive: Bool?

    /// The username to change
    public let username: String?


    public init(
        botUserId: Int64?,
        isActive: Bool?,
        username: String?
    ) {
        self.botUserId = botUserId
        self.isActive = isActive
        self.username = username
    }
}

