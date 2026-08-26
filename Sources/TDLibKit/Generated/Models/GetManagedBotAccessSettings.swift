//
//  GetManagedBotAccessSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-afbfb4d8
//  https://github.com/tdlib/td/tree/afbfb4d8
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

