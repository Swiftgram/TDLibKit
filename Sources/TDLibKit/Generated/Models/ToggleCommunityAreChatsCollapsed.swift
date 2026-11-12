//
//  ToggleCommunityAreChatsCollapsed.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-23383aef
//  https://github.com/tdlib/td/tree/23383aef
//

import Foundation


/// Changes whether all chats of a community are collapsed into one entry in the chat list. If the chats are expanded, then the community is removed from all chat folders
public struct ToggleCommunityAreChatsCollapsed: Codable, Equatable, Hashable {

    /// Pass true to collapse all chats of the community into one entry in the chat list
    public let areChatsCollapsed: Bool?

    /// Identifier of the community
    public let communityId: Int64?


    public init(
        areChatsCollapsed: Bool?,
        communityId: Int64?
    ) {
        self.areChatsCollapsed = areChatsCollapsed
        self.communityId = communityId
    }
}

