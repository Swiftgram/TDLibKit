//
//  InlineQueryResults.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Represents the results of the inline query. Use sendInlineQueryResultMessage to send the result of the query
public struct InlineQueryResults: Codable, Equatable {

    /// Unique identifier of the inline query
    public let inlineQueryId: TdInt64

    /// The offset for the next request. If empty, there are no more results
    public let nextOffset: String

    /// Results of the query
    public let results: [InlineQueryResult]

    /// Parameter for the bot start message
    public let switchPmParameter: String

    /// If non-empty, this text must be shown on the button, which opens a private chat with the bot and sends the bot a start message with the switch_pm_parameter
    public let switchPmText: String


    public init(
        inlineQueryId: TdInt64,
        nextOffset: String,
        results: [InlineQueryResult],
        switchPmParameter: String,
        switchPmText: String
    ) {
        self.inlineQueryId = inlineQueryId
        self.nextOffset = nextOffset
        self.results = results
        self.switchPmParameter = switchPmParameter
        self.switchPmText = switchPmText
    }
}

