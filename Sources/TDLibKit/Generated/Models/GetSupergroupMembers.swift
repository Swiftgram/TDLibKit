//
//  GetSupergroupMembers.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns information about members or banned users in a supergroup or channel. Can be used only if supergroupFullInfo.can_get_members == true; additionally, administrator privileges may be required for some filters
public struct GetSupergroupMembers: Codable, Equatable, Hashable {

    /// The type of users to return; pass null to use supergroupMembersFilterRecent
    public let filter: SupergroupMembersFilter?

    /// The maximum number of users to be returned; up to 200
    public let limit: Int?

    /// Number of users to skip
    public let offset: Int?

    /// Identifier of the supergroup or channel
    public let supergroupId: Int64?


    public init(
        filter: SupergroupMembersFilter?,
        limit: Int?,
        offset: Int?,
        supergroupId: Int64?
    ) {
        self.filter = filter
        self.limit = limit
        self.offset = offset
        self.supergroupId = supergroupId
    }
}

