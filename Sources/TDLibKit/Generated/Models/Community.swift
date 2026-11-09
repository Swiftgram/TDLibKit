//
//  Community.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-6126ecae
//  https://github.com/tdlib/td/tree/6126ecae
//

import Foundation


/// Represents a community consisting of supergroup chats, channel chats and chats with bots
public struct Community: Codable, Equatable, Hashable, Identifiable {

    /// True, if all chats of the community are collapsed into one entry in the chat list
    public let areChatsCollapsed: Bool

    /// Point in time (Unix timestamp) when the community was joined, or the point in time when the community was created, in case the user is not a member of any chat in the community
    public let date: Int

    /// If false, the community is inaccessible, and the only information known about the community is inside this class. Identifier of the community can't be passed to any method
    public let haveAccess: Bool

    /// Community identifier
    public let id: Int64

    /// Community name
    public let name: String

    /// Actions that non-administrator community members are allowed to take in the community
    public let permissions: CommunityPermissions

    /// Community photo; may be null
    public let photo: ChatPhotoInfo?

    /// Status of the current user in the community
    public let status: CommunityMemberStatus


    public init(
        areChatsCollapsed: Bool,
        date: Int,
        haveAccess: Bool,
        id: Int64,
        name: String,
        permissions: CommunityPermissions,
        photo: ChatPhotoInfo?,
        status: CommunityMemberStatus
    ) {
        self.areChatsCollapsed = areChatsCollapsed
        self.date = date
        self.haveAccess = haveAccess
        self.id = id
        self.name = name
        self.permissions = permissions
        self.photo = photo
        self.status = status
    }
}

