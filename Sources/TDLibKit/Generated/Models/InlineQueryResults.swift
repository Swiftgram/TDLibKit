//
//  InlineQueryResults.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents the results of the inline query. Use sendInlineQueryResultMessage to send the result of the query
public struct InlineQueryResults: Codable, Equatable, Hashable {

    /// Button to be shown above inline query results; may be null
    public let button: InlineQueryResultsButton?

    /// Unique identifier of the inline query
    public let inlineQueryId: TdInt64

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// Results of the query
    public let results: [InlineQueryResult]


    public init(
        button: InlineQueryResultsButton?,
        inlineQueryId: TdInt64,
        nextOffset: String,
        results: [InlineQueryResult]
    ) {
        self.button = button
        self.inlineQueryId = inlineQueryId
        self.nextOffset = nextOffset
        self.results = results
    }
}

