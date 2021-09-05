//
//  GetSupergroupMembers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
//

import Foundation


/// Returns information about members or banned users in a supergroup or channel. Can be used only if SupergroupFullInfo.can_get_members == true; additionally, administrator privileges may be required for some filters
public struct GetSupergroupMembers: Codable {

    /// The type of users to return. By default, supergroupMembersFilterRecent
    public let filter: SupergroupMembersFilter

    /// The maximum number of users be returned; up to 200
    public let limit: Int

    /// Number of users to skip
    public let offset: Int

    /// Identifier of the supergroup or channel
    public let supergroupId: Int


    public init(
        filter: SupergroupMembersFilter,
        limit: Int,
        offset: Int,
        supergroupId: Int
    ) {
        self.filter = filter
        self.limit = limit
        self.offset = offset
        self.supergroupId = supergroupId
    }
}

