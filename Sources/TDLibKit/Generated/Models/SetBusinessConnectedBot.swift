//
//  SetBusinessConnectedBot.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.45-721300bc
//  https://github.com/tdlib/td/tree/721300bc
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

