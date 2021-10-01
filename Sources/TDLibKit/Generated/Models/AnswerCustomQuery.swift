//
//  AnswerCustomQuery.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-5f19e026
//  https://github.com/tdlib/td/tree/5f19e026
//

import Foundation


/// Answers a custom query; for bots only
public struct AnswerCustomQuery: Codable {

    /// Identifier of a custom query
    public let customQueryId: TdInt64

    /// JSON-serialized answer to the query
    public let data: String


    public init(
        customQueryId: TdInt64,
        data: String
    ) {
        self.customQueryId = customQueryId
        self.data = data
    }
}

