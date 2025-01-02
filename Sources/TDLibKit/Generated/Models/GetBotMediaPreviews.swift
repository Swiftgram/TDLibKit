//
//  GetBotMediaPreviews.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
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

