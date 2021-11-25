//
//  ChatJoinRequestsInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-2725f7c5
//  https://github.com/tdlib/td/tree/2725f7c5
//

import Foundation


/// Contains information about pending chat join requests
public struct ChatJoinRequestsInfo: Codable, Equatable {

    /// Total number of pending join requests
    public let totalCount: Int

    /// Identifiers of users sent the newest pending join requests
    public let userIds: [Int64]


    public init(
        totalCount: Int,
        userIds: [Int64]
    ) {
        self.totalCount = totalCount
        self.userIds = userIds
    }
}

