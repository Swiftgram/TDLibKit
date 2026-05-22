//
//  SetManagedBotAccessSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.64-e0943d06
//  https://github.com/tdlib/td/tree/e0943d06
//

import Foundation


/// Sets access settings of a managed bot; for bots only
public struct SetManagedBotAccessSettings: Codable, Equatable, Hashable {

    /// Identifier of the managed bot
    public let botUserId: Int64?

    /// New access settings
    public let settings: BotAccessSettings?


    public init(
        botUserId: Int64?,
        settings: BotAccessSettings?
    ) {
        self.botUserId = botUserId
        self.settings = settings
    }
}

