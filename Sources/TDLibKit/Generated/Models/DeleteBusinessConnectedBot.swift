//
//  DeleteBusinessConnectedBot.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.32-3cd93569
//  https://github.com/tdlib/td/tree/3cd93569
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

