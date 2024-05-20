//
//  AnswerInlineQuery.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Sets the result of an inline query; for bots only
public struct AnswerInlineQuery: Codable, Equatable, Hashable {

    /// Button to be shown above inline query results; pass null if none
    public let button: InlineQueryResultsButton?

    /// Allowed time to cache the results of the query, in seconds
    public let cacheTime: Int?

    /// Identifier of the inline query
    public let inlineQueryId: TdInt64?

    /// Pass true if results may be cached and returned only for the user that sent the query. By default, results may be returned to any user who sends the same query
    public let isPersonal: Bool?

    /// Offset for the next inline query; pass an empty string if there are no more results
    public let nextOffset: String?

    /// The results of the query
    public let results: [InputInlineQueryResult]?


    public init(
        button: InlineQueryResultsButton?,
        cacheTime: Int?,
        inlineQueryId: TdInt64?,
        isPersonal: Bool?,
        nextOffset: String?,
        results: [InputInlineQueryResult]?
    ) {
        self.button = button
        self.cacheTime = cacheTime
        self.inlineQueryId = inlineQueryId
        self.isPersonal = isPersonal
        self.nextOffset = nextOffset
        self.results = results
    }
}

