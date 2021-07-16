//
//  GetInlineQueryResults.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Sends an inline query to a bot and returns its results. Returns an error with code 502 if the bot fails to answer the query before the query timeout expires
public struct GetInlineQueryResults: Codable {

    /// The identifier of the target bot
    public let botUserId: Int

    /// Identifier of the chat where the query was sent
    public let chatId: Int64

    /// Offset of the first entry to return
    public let offset: String

    /// Text of the query
    public let query: String

    /// Location of the user, only if needed
    public let userLocation: Location


    public init(
        botUserId: Int,
        chatId: Int64,
        offset: String,
        query: String,
        userLocation: Location
    ) {
        self.botUserId = botUserId
        self.chatId = chatId
        self.offset = offset
        self.query = query
        self.userLocation = userLocation
    }
}

