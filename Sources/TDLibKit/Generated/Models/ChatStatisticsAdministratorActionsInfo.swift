//
//  ChatStatisticsAdministratorActionsInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Contains statistics about administrator actions done by a user
public struct ChatStatisticsAdministratorActionsInfo: Codable {

    /// Number of users banned by the administrator
    public let bannedUserCount: Int

    /// Number of messages deleted by the administrator
    public let deletedMessageCount: Int

    /// Number of users restricted by the administrator
    public let restrictedUserCount: Int

    /// Administrator user identifier
    public let userId: Int


    public init(
        bannedUserCount: Int,
        deletedMessageCount: Int,
        restrictedUserCount: Int,
        userId: Int
    ) {
        self.bannedUserCount = bannedUserCount
        self.deletedMessageCount = deletedMessageCount
        self.restrictedUserCount = restrictedUserCount
        self.userId = userId
    }
}
