//
//  DeleteBotSecondaryUsername.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-4a85043f
//  https://github.com/tdlib/td/tree/4a85043f
//

import Foundation


/// Removes a secondary username from a bot. Can be called only if userTypeBot.can_be_edited == true and the bot has a secondary username
public struct DeleteBotSecondaryUsername: Codable, Equatable, Hashable {

    /// Identifier of the target bot
    public let botUserId: Int64?


    public init(botUserId: Int64?) {
        self.botUserId = botUserId
    }
}

