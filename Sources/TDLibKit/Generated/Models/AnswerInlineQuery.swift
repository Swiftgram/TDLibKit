//
//  AnswerInlineQuery.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Sets the result of an inline query; for bots only
public struct AnswerInlineQuery: Codable, Equatable {

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

    /// The parameter for the bot start message
    public let switchPmParameter: String?

    /// If non-empty, this text must be shown on the button that opens a private chat with the bot and sends a start message to the bot with the parameter switch_pm_parameter
    public let switchPmText: String?


    public init(
        cacheTime: Int?,
        inlineQueryId: TdInt64?,
        isPersonal: Bool?,
        nextOffset: String?,
        results: [InputInlineQueryResult]?,
        switchPmParameter: String?,
        switchPmText: String?
    ) {
        self.cacheTime = cacheTime
        self.inlineQueryId = inlineQueryId
        self.isPersonal = isPersonal
        self.nextOffset = nextOffset
        self.results = results
        self.switchPmParameter = switchPmParameter
        self.switchPmText = switchPmText
    }
}

