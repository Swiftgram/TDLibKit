//
//  EditChatFolderInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Edits an invite link for a chat folder
public struct EditChatFolderInviteLink: Codable, Equatable, Hashable {

    /// Chat folder identifier
    public let chatFolderId: Int?

    /// New identifiers of chats to be accessible by the invite link. Use getChatsForChatFolderInviteLink to get suitable chats. Basic groups will be automatically converted to supergroups before link editing
    public let chatIds: [Int64]?

    /// Invite link to be edited
    public let inviteLink: String?

    /// New name of the link; 0-32 characters
    public let name: String?


    public init(
        chatFolderId: Int?,
        chatIds: [Int64]?,
        inviteLink: String?,
        name: String?
    ) {
        self.chatFolderId = chatFolderId
        self.chatIds = chatIds
        self.inviteLink = inviteLink
        self.name = name
    }
}

