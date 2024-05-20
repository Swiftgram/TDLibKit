//
//  ProcessChatJoinRequests.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Handles all pending join requests for a given link in a chat
public struct ProcessChatJoinRequests: Codable, Equatable, Hashable {

    /// Pass true to approve all requests; pass false to decline them
    public let approve: Bool?

    /// Chat identifier
    public let chatId: Int64?

    /// Invite link for which to process join requests. If empty, all join requests will be processed. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links
    public let inviteLink: String?


    public init(
        approve: Bool?,
        chatId: Int64?,
        inviteLink: String?
    ) {
        self.approve = approve
        self.chatId = chatId
        self.inviteLink = inviteLink
    }
}

