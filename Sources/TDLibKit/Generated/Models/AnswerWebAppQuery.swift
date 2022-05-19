//
//  AnswerWebAppQuery.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-18cd0dd9
//  https://github.com/tdlib/td/tree/18cd0dd9
//

import Foundation


/// Sets the result of interaction with a web app and sends corresponding message on behalf of the user to the chat from which the query originated; for bots only
public struct AnswerWebAppQuery: Codable, Equatable {

    /// The result of the query
    public let result: InputInlineQueryResult?

    /// Identifier of the web app query
    public let webAppQueryId: String?


    public init(
        result: InputInlineQueryResult?,
        webAppQueryId: String?
    ) {
        self.result = result
        self.webAppQueryId = webAppQueryId
    }
}

