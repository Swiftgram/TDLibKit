//
//  ConfirmBusinessConnectedBot.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-d6debbb2
//  https://github.com/tdlib/td/tree/d6debbb2
//

import Foundation


/// Confirms an unconfirmed business connection of the current user from another device
public struct ConfirmBusinessConnectedBot: Codable, Equatable, Hashable {

    /// User identifier of the bot
    public let botUserId: Int64?


    public init(botUserId: Int64?) {
        self.botUserId = botUserId
    }
}

