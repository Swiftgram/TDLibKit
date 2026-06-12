//
//  GetManagedBotAccessSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-062f2605
//  https://github.com/tdlib/td/tree/062f2605
//

import Foundation


/// Returns access settings of a managed bot; for bots only
public struct GetManagedBotAccessSettings: Codable, Equatable, Hashable {

    /// Identifier of the managed bot
    public let botUserId: Int64?


    public init(botUserId: Int64?) {
        self.botUserId = botUserId
    }
}

