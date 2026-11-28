//
//  ChatStatisticsInviterInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Contains statistics about the number of new members invited by a user
public struct ChatStatisticsInviterInfo: Codable, Equatable, Hashable {

    /// Number of new members invited by the user
    public let addedMemberCount: Int

    /// User identifier
    public let userId: Int64


    public init(
        addedMemberCount: Int,
        userId: Int64
    ) {
        self.addedMemberCount = addedMemberCount
        self.userId = userId
    }
}

