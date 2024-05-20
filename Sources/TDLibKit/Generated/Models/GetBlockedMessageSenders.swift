//
//  GetBlockedMessageSenders.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns users and chats that were blocked by the current user
public struct GetBlockedMessageSenders: Codable, Equatable, Hashable {

    /// Block list from which to return users
    public let blockList: BlockList?

    /// The maximum number of users and chats to return; up to 100
    public let limit: Int?

    /// Number of users and chats to skip in the result; must be non-negative
    public let offset: Int?


    public init(
        blockList: BlockList?,
        limit: Int?,
        offset: Int?
    ) {
        self.blockList = blockList
        self.limit = limit
        self.offset = offset
    }
}

