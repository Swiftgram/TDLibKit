//
//  OpenBotSimilarBot.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Informs TDLib that a bot was opened from the list of similar bots
public struct OpenBotSimilarBot: Codable, Equatable, Hashable {

    /// Identifier of the original bot, which similar bots were requested
    public let botUserId: Int64?

    /// Identifier of the opened bot
    public let openedBotUserId: Int64?


    public init(
        botUserId: Int64?,
        openedBotUserId: Int64?
    ) {
        self.botUserId = botUserId
        self.openedBotUserId = openedBotUserId
    }
}

