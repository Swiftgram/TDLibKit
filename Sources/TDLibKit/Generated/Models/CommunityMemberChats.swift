//
//  CommunityMemberChats.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Contains information about chats in a community that are joined or owned by a member of the community
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

