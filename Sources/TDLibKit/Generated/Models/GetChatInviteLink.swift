//
//  GetChatInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-a03a9047
//  https://github.com/tdlib/td/tree/a03a9047
//

import Foundation


/// Returns information about an invite link. Requires administrator privileges and can_invite_users right in the chat to get own links and owner privileges to get other links
public struct GetChatInviteLink: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Invite link to get
    public let inviteLink: String?


    public init(
        chatId: Int64?,
        inviteLink: String?
    ) {
        self.chatId = chatId
        self.inviteLink = inviteLink
    }
}

