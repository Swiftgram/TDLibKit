//
//  ChatStatisticsAdministratorActionsInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Contains statistics about administrator actions done by a user
public struct ChatStatisticsAdministratorActionsInfo: Codable, Equatable, Hashable {

    /// Number of users banned by the administrator
    public let bannedUserCount: Int

    /// Number of messages deleted by the administrator
    public let deletedMessageCount: Int

    /// Number of users restricted by the administrator
    public let restrictedUserCount: Int

    /// Administrator user identifier
    public let userId: Int64


    public init(
        bannedUserCount: Int,
        deletedMessageCount: Int,
        restrictedUserCount: Int,
        userId: Int64
    ) {
        self.bannedUserCount = bannedUserCount
        self.deletedMessageCount = deletedMessageCount
        self.restrictedUserCount = restrictedUserCount
        self.userId = userId
    }
}

