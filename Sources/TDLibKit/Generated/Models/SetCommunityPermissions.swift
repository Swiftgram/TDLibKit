//
//  SetCommunityPermissions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-18c8f7a0
//  https://github.com/tdlib/td/tree/18c8f7a0
//

import Foundation


/// Changes permissions of regular members in the given community; requires can_ban_members administrator right in the community
public struct SetCommunityPermissions: Codable, Equatable, Hashable {

    /// Identifier of the community
    public let communityId: Int64?

    /// New permissions of the community
    public let permissions: CommunityPermissions?


    public init(
        communityId: Int64?,
        permissions: CommunityPermissions?
    ) {
        self.communityId = communityId
        self.permissions = permissions
    }
}

