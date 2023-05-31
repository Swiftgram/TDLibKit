//
//  ReorderActiveBotUsernames.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-fe734fd6
//  https://github.com/tdlib/td/tree/fe734fd6
//

import Foundation


/// Changes order of active usernames of a bot. Can be called only if userTypeBot.can_be_edited == true
public struct ReorderActiveBotUsernames: Codable, Equatable {

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

