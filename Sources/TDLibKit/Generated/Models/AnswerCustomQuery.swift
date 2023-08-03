//
//  AnswerCustomQuery.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-64264b0f
//  https://github.com/tdlib/td/tree/64264b0f
//

import Foundation


/// Answers a custom query; for bots only
public struct AnswerCustomQuery: Codable, Equatable, Hashable {

    /// Identifier of a custom query
    public let customQueryId: TdInt64?

    /// JSON-serialized answer to the query
    public let data: String?


    public init(
        customQueryId: TdInt64?,
        data: String?
    ) {
        self.customQueryId = customQueryId
        self.data = data
    }
}

