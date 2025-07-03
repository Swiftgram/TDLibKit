//
//  EditChatSubscriptionInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-bb474a20
//  https://github.com/tdlib/td/tree/bb474a20
//

import Foundation


/// Edits a subscription invite link for a channel chat. Requires can_invite_users right in the chat for own links and owner privileges for other links
public struct EditChatSubscriptionInviteLink: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Invite link to be edited
    public let inviteLink: String?

    /// Invite link name; 0-32 characters
    public let name: String?


    public init(
        chatId: Int64?,
        inviteLink: String?,
        name: String?
    ) {
        self.chatId = chatId
        self.inviteLink = inviteLink
        self.name = name
    }
}

