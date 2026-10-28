//
//  AnswerChatJoinRequestQuery.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-fb464979
//  https://github.com/tdlib/td/tree/fb464979
//

import Foundation


/// Sets the result of a chat join query; for bots only
public struct AnswerChatJoinRequestQuery: Codable, Equatable, Hashable {

    /// Identifier of the query
    public let queryId: TdInt64?

    /// The result; must be null if a URL is passed
    public let result: ChatJoinRequestResult?

    /// URL of the Web App to open; must be empty if a result is passed
    public let url: String?


    public init(
        queryId: TdInt64?,
        result: ChatJoinRequestResult?,
        url: String?
    ) {
        self.queryId = queryId
        self.result = result
        self.url = url
    }
}

