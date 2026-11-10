//
//  CommunityMemberChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ad2c1516
//  https://github.com/tdlib/td/tree/ad2c1516
//

import Foundation


/// Contains information about chats in a community, which are joined or owned by a member of the community
public struct CommunityMemberChats: Codable, Equatable, Hashable {

    /// Identifiers of the non-owned chats joined by the member
    public let joinedChatIds: [Int64]

    /// Identifiers of the chats owned by the member. The chats will be removed from the community if the member is banned in the community
    public let ownedChatIds: [Int64]


    public init(
        joinedChatIds: [Int64],
        ownedChatIds: [Int64]
    ) {
        self.joinedChatIds = joinedChatIds
        self.ownedChatIds = ownedChatIds
    }
}

