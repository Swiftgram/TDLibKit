//
//  AnswerWebAppQuery.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-b498497b
//  https://github.com/tdlib/td/tree/b498497b
//

import Foundation


/// Sets the result of interaction with a Web App and sends corresponding message on behalf of the user to the chat from which the query originated; for bots only
public struct AnswerWebAppQuery: Codable, Equatable, Hashable {

    /// The result of the query
    public let result: InputInlineQueryResult?

    /// Identifier of the Web App query
    public let webAppQueryId: String?


    public init(
        result: InputInlineQueryResult?,
        webAppQueryId: String?
    ) {
        self.result = result
        self.webAppQueryId = webAppQueryId
    }
}

