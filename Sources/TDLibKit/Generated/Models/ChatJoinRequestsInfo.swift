//
//  ChatJoinRequestsInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-3d4b4ac0
//  https://github.com/tdlib/td/tree/3d4b4ac0
//

import Foundation


/// Contains information about pending join requests for a chat
public struct ChatJoinRequestsInfo: Codable, Equatable {

    /// Total number of pending join requests
    public let totalCount: Int

    /// Identifiers of at most 3 users sent the newest pending join requests
    public let userIds: [Int64]


    public init(
        totalCount: Int,
        userIds: [Int64]
    ) {
        self.totalCount = totalCount
        self.userIds = userIds
    }
}

