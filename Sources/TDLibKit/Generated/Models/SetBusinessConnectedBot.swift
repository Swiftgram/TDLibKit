//
//  SetBusinessConnectedBot.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-51743dfd
//  https://github.com/tdlib/td/tree/51743dfd
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

