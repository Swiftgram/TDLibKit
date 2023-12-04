//
//  ReorderBotActiveUsernames.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-3f00bebf
//  https://github.com/tdlib/td/tree/3f00bebf
//

import Foundation


/// Changes order of active usernames of a bot. Can be called only if userTypeBot.can_be_edited == true
public struct ReorderBotActiveUsernames: Codable, Equatable, Hashable {

    /// Identifier of the target bot
    public let botUserId: Int64?

    /// The new order of active usernames. All currently active usernames must be specified
    public let usernames: [String]?


    public init(
        botUserId: Int64?,
        usernames: [String]?
    ) {
        self.botUserId = botUserId
        self.usernames = usernames
    }
}

