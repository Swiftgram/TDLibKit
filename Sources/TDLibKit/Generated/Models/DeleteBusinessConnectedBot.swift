//
//  DeleteBusinessConnectedBot.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-ca58a8b2
//  https://github.com/tdlib/td/tree/ca58a8b2
//

import Foundation


/// Deletes the business bot that is connected to the current user account
public struct DeleteBusinessConnectedBot: Codable, Equatable, Hashable {

    /// Unique user identifier for the bot
    public let botUserId: Int64?


    public init(botUserId: Int64?) {
        self.botUserId = botUserId
    }
}

