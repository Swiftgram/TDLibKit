//
//  GetChatEventLog.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Returns a list of service actions taken by chat members and administrators in the last 48 hours. Available only for supergroups and channels. Requires administrator rights. Returns results in reverse chronological order (i. e., in order of decreasing event_id)
public struct GetChatEventLog: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// The types of events to return. By default, all types will be returned
    public let filters: ChatEventLogFilters

    /// Identifier of an event from which to return results. Use 0 to get results from the latest events
    public let fromEventId: TdInt64

    /// The maximum number of events to return; up to 100
    public let limit: Int

    /// Search query by which to filter events
    public let query: String

    /// User identifiers by which to filter events. By default, events relating to all users will be returned
    public let userIds: [Int]


    public init(
        chatId: Int64,
        filters: ChatEventLogFilters,
        fromEventId: TdInt64,
        limit: Int,
        query: String,
        userIds: [Int]
    ) {
        self.chatId = chatId
        self.filters = filters
        self.fromEventId = fromEventId
        self.limit = limit
        self.query = query
        self.userIds = userIds
    }
}

