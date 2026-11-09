//
//  ToggleCommunityMemberIsBanned.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-6126ecae
//  https://github.com/tdlib/td/tree/6126ecae
//

import Foundation


/// Bans or unbans a member of a community; requires can_ban_members administrator right in the community. A banned member is banned in all chats of the community. Administrators of the community can be banned only by the owner of the community and administrators, which can edit administrator rights of the member. If an owner of a chat in the community is banned, then the chat is removed from the community; in this case, can_edit_chat_list administrator right is also required
public struct ToggleCommunityMemberIsBanned: Codable, Equatable, Hashable {

    /// Identifier of the community
    public let communityId: Int64?

    /// Pass true to ban the member; pass false to unban the member
    public let isBanned: Bool?

    /// Identifier of the member to ban or unban
    public let memberId: MessageSender?


    public init(
        communityId: Int64?,
        isBanned: Bool?,
        memberId: MessageSender?
    ) {
        self.communityId = communityId
        self.isBanned = isBanned
        self.memberId = memberId
    }
}

