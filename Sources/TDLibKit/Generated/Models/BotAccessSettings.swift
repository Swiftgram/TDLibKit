//
//  BotAccessSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.64-e0943d06
//  https://github.com/tdlib/td/tree/e0943d06
//

import Foundation


/// Describes users that have access to a bot
public struct BotAccessSettings: Codable, Equatable, Hashable {

    /// Identifiers of the users who can use the bot additionally to the owner of the bot
    public let addedUserIds: [Int64]

    /// True, if access to the bot is restricted to its owner and selected users
    public let isRestricted: Bool


    public init(
        addedUserIds: [Int64],
        isRestricted: Bool
    ) {
        self.addedUserIds = addedUserIds
        self.isRestricted = isRestricted
    }
}

