//
//  DeleteRevokedChatInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Deletes revoked chat invite links. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links
public struct DeleteRevokedChatInviteLink: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// Invite link to revoke
    public let inviteLink: String?


    public init(
        chatId: Int64?,
        inviteLink: String?
    ) {
        self.chatId = chatId
        self.inviteLink = inviteLink
    }
}

