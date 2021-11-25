//
//  AnswerCustomQuery.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-2725f7c5
//  https://github.com/tdlib/td/tree/2725f7c5
//

import Foundation


/// Answers a custom query; for bots only
public struct AnswerCustomQuery: Codable, Equatable {

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

