//
//  GetBlockedMessageSenders.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.11-d4f5e672
//  https://github.com/tdlib/td/tree/d4f5e672
//

import Foundation


/// Returns users and chats that were blocked by the current user
public struct GetBlockedMessageSenders: Codable, Equatable {

    /// The maximum number of users and chats to return; up to 100
    public let limit: Int?

    /// Number of users and chats to skip in the result; must be non-negative
    public let offset: Int?


    public init(
        limit: Int?,
        offset: Int?
    ) {
        self.limit = limit
        self.offset = offset
    }
}

