//
//  BasicGroup.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents a basic group of 0-200 users (must be upgraded to a supergroup to accommodate more than 200 users)
public struct BasicGroup: Codable, Equatable, Hashable, Identifiable {

    /// Group identifier
    public let id: Int64

    /// True, if the group is active
    public let isActive: Bool

    /// Number of members in the group
    public let memberCount: Int

    /// Status of the current user in the group
    public let status: ChatMemberStatus

    /// Identifier of the supergroup to which this group was upgraded; 0 if none
    public let upgradedToSupergroupId: Int64


    public init(
        id: Int64,
        isActive: Bool,
        memberCount: Int,
        status: ChatMemberStatus,
        upgradedToSupergroupId: Int64
    ) {
        self.id = id
        self.isActive = isActive
        self.memberCount = memberCount
        self.status = status
        self.upgradedToSupergroupId = upgradedToSupergroupId
    }
}

