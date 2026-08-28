//
//  AnswerChatJoinRequestQuery.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
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

