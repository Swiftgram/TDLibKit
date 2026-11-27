//
//  AddBotSecondaryUsername.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Adds a secondary username to a bot. Can be called only if userTypeBot.can_be_edited, the bot has no secondary username, and the current user has a Telegram Premium subscription. May return an error with a message "OWNER_USERNAMES_LIMIT_EXCEEDED" if the current user already owns at least getOption("secondary_bot_username_count_max") bots with a secondary username
public struct AddBotSecondaryUsername: Codable, Equatable, Hashable {

    /// Identifier of the target bot
    public let botUserId: Int64?

    /// The new secondary username; must be non-empty. Use checkBotUsername to check username validity
    public let username: String?


    public init(
        botUserId: Int64?,
        username: String?
    ) {
        self.botUserId = botUserId
        self.username = username
    }
}

