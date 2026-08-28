//
//  SetManagedBotAccessSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
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

