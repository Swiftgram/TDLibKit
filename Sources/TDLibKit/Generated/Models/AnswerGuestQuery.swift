//
//  AnswerGuestQuery.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-ca58a8b2
//  https://github.com/tdlib/td/tree/ca58a8b2
//

import Foundation


/// Sets the result of a guest query; for bots only
public struct AnswerGuestQuery: Codable, Equatable, Hashable {

    /// Identifier of the guest query
    public let guestQueryId: TdInt64?

    /// The result of the query
    public let result: InputInlineQueryResult?


    public init(
        guestQueryId: TdInt64?,
        result: InputInlineQueryResult?
    ) {
        self.guestQueryId = guestQueryId
        self.result = result
    }
}

