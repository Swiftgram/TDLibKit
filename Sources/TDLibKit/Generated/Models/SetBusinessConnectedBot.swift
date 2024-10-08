//
//  SetBusinessConnectedBot.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-fe6f2f93
//  https://github.com/tdlib/td/tree/fe6f2f93
//

import Foundation


/// Adds or changes business bot that is connected to the current user account
public struct SetBusinessConnectedBot: Codable, Equatable, Hashable {

    /// Connection settings for the bot
    public let bot: BusinessConnectedBot?


    public init(bot: BusinessConnectedBot?) {
        self.bot = bot
    }
}

