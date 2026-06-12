//
//  AnswerChatJoinRequestQuery.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-d6debbb2
//  https://github.com/tdlib/td/tree/d6debbb2
//

import Foundation


/// Sets the result of a chat join query; for bots only
public struct AnswerChatJoinRequestQuery: Codable, Equatable, Hashable {

    /// Identifier of the query
    public let queryId: TdInt64?

    /// The result
    public let result: ChatJoinRequestResult?

    /// URL of the Web App to open
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

