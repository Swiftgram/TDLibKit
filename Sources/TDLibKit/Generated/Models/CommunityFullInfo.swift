//
//  CommunityFullInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Contains full information about a community
public struct CommunityFullInfo: Codable, Equatable, Hashable {

    /// Number of pending requests for addition of chats to the community; 0 if the current user isn't an administrator of the community
    public let addChatRequestCount: Int

    /// Number of privileged users in the community; 0 if the current user isn't an administrator of the community
    public let administratorCount: Int

    /// Number of users banned from the community; 0 if the current user isn't an administrator of the community
    public let bannedCount: Int

    /// Chats belonging to the community
    public let chats: [CommunityChat]

    /// Photo of the community
    public let photo: ChatPhoto


    public init(
        addChatRequestCount: Int,
        administratorCount: Int,
        bannedCount: Int,
        chats: [CommunityChat],
        photo: ChatPhoto
    ) {
        self.addChatRequestCount = addChatRequestCount
        self.administratorCount = administratorCount
        self.bannedCount = bannedCount
        self.chats = chats
        self.photo = photo
    }
}

