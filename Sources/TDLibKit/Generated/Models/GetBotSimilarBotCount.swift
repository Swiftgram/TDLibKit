//
//  GetBotSimilarBotCount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.44-28c6f2e9
//  https://github.com/tdlib/td/tree/28c6f2e9
//

import Foundation


/// Returns approximate number of bots similar to the given bot
public struct GetBotSimilarBotCount: Codable, Equatable, Hashable {

    /// User identifier of the target bot
    public let botUserId: Int64?

    /// Pass true to get the number of bots without sending network requests, or -1 if the number of bots is unknown locally
    public let returnLocal: Bool?


    public init(
        botUserId: Int64?,
        returnLocal: Bool?
    ) {
        self.botUserId = botUserId
        self.returnLocal = returnLocal
    }
}

