//
//  GetForumTopics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns found forum topics in a forum chat. This is a temporary method for getting information about topic list from the server
public struct GetForumTopics: Codable, Equatable, Hashable {

    /// Identifier of the forum chat
    public let chatId: Int64?

    /// The maximum number of forum topics to be returned; up to 100. For optimal performance, the number of returned forum topics is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// The date starting from which the results need to be fetched. Use 0 or any date in the future to get results from the last topic
    public let offsetDate: Int?

    /// The message identifier of the last message in the last found topic, or 0 for the first request
    public let offsetMessageId: Int64?

    /// The message thread identifier of the last found topic, or 0 for the first request
    public let offsetMessageThreadId: Int64?

    /// Query to search for in the forum topic's name
    public let query: String?


    public init(
        chatId: Int64?,
        limit: Int?,
        offsetDate: Int?,
        offsetMessageId: Int64?,
        offsetMessageThreadId: Int64?,
        query: String?
    ) {
        self.chatId = chatId
        self.limit = limit
        self.offsetDate = offsetDate
        self.offsetMessageId = offsetMessageId
        self.offsetMessageThreadId = offsetMessageThreadId
        self.query = query
    }
}

