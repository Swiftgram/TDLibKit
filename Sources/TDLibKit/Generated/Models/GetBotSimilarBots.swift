//
//  GetBotSimilarBots.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-0e88653d
//  https://github.com/tdlib/td/tree/0e88653d
//

import Foundation


/// Returns a list of bots similar to the given bot
public struct GetBotSimilarBots: Codable, Equatable, Hashable {

    /// User identifier of the target bot
    public let botUserId: Int64?


    public init(botUserId: Int64?) {
        self.botUserId = botUserId
    }
}

