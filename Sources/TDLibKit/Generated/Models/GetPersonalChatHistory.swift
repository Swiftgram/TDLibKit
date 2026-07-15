//
//  GetPersonalChatHistory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-07d3a097
//  https://github.com/tdlib/td/tree/07d3a097
//

import Foundation


/// Returns messages in the personal chat of a given user; for bots only
public struct GetPersonalChatHistory: Codable, Equatable, Hashable {

    /// The maximum number of messages to be returned; 1-20
    public let limit: Int?

    /// User identifier
    public let userId: Int64?


    public init(
        limit: Int?,
        userId: Int64?
    ) {
        self.limit = limit
        self.userId = userId
    }
}

