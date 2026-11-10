//
//  GetCommunityMemberChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ad2c1516
//  https://github.com/tdlib/td/tree/ad2c1516
//

import Foundation


/// Returns chats in a community, which were joined by a member of the community; requires can_ban_members administrator right in the community. Can be used to show chats that will be affected by the member ban
public struct GetCommunityMemberChats: Codable, Equatable, Hashable {

    /// Identifier of the community
    public let communityId: Int64?

    /// Identifier of the member
    public let memberId: MessageSender?


    public init(
        communityId: Int64?,
        memberId: MessageSender?
    ) {
        self.communityId = communityId
        self.memberId = memberId
    }
}

