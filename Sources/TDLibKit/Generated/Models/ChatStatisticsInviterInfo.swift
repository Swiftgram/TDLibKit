//
//  ChatStatisticsInviterInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Contains statistics about number of new members invited by a user
public struct ChatStatisticsInviterInfo: Codable {

    /// Number of new members invited by the user
    public let addedMemberCount: Int

    /// User identifier
    public let userId: Int


    public init(
        addedMemberCount: Int,
        userId: Int
    ) {
        self.addedMemberCount = addedMemberCount
        self.userId = userId
    }
}

