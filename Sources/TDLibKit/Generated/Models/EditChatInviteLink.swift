//
//  EditChatInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-3abac232
//  https://github.com/tdlib/td/tree/3abac232
//

import Foundation


/// Edits a non-primary invite link for a chat. Available for basic groups, supergroups, and channels. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links
public struct EditChatInviteLink: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// Point in time (Unix timestamp) when the link will expire; pass 0 if never
    public let expireDate: Int?

    /// Invite link to be edited
    public let inviteLink: String?

    /// The maximum number of chat members that can join the chat by the link simultaneously; 0-99999; pass 0 if not limited
    public let memberLimit: Int?


    public init(
        chatId: Int64?,
        expireDate: Int?,
        inviteLink: String?,
        memberLimit: Int?
    ) {
        self.chatId = chatId
        self.expireDate = expireDate
        self.inviteLink = inviteLink
        self.memberLimit = memberLimit
    }
}

