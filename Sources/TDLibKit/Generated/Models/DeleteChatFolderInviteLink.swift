//
//  DeleteChatFolderInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.28-77b34797
//  https://github.com/tdlib/td/tree/77b34797
//

import Foundation


/// Deletes an invite link for a chat folder
public struct DeleteChatFolderInviteLink: Codable, Equatable, Hashable {

    /// Chat folder identifier
    public let chatFolderId: Int?

    /// Invite link to be deleted
    public let inviteLink: String?


    public init(
        chatFolderId: Int?,
        inviteLink: String?
    ) {
        self.chatFolderId = chatFolderId
        self.inviteLink = inviteLink
    }
}

