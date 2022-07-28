//
//  GetInlineQueryResults.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Sends an inline query to a bot and returns its results. Returns an error with code 502 if the bot fails to answer the query before the query timeout expires
public struct GetInlineQueryResults: Codable, Equatable {

    /// The identifier of the target bot
    public let botUserId: Int64?

    /// Identifier of the chat where the query was sent
    public let chatId: Int64?

    /// Offset of the first entry to return
    public let offset: String?

    /// Text of the query
    public let query: String?

    /// Location of the user; pass null if unknown or the bot doesn't need user's location
    public let userLocation: Location?


    public init(
        botUserId: Int64?,
        chatId: Int64?,
        offset: String?,
        query: String?,
        userLocation: Location?
    ) {
        self.botUserId = botUserId
        self.chatId = chatId
        self.offset = offset
        self.query = query
        self.userLocation = userLocation
    }
}

