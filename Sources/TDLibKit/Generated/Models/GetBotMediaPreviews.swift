//
//  GetBotMediaPreviews.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.40-22d49d5b
//  https://github.com/tdlib/td/tree/22d49d5b
//

import Foundation


/// Returns the list of media previews of a bot
public struct GetBotMediaPreviews: Codable, Equatable, Hashable {

    /// Identifier of the target bot. The bot must have the main Web App
    public let botUserId: Int64?


    public init(botUserId: Int64?) {
        self.botUserId = botUserId
    }
}

