//
//  ProcessChatJoinRequests.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.12-a6903023
//  https://github.com/tdlib/td/tree/a6903023
//

import Foundation


/// Handles all pending join requests for a given link in a chat
public struct ProcessChatJoinRequests: Codable, Equatable {

    /// True, if the requests are approved. Otherwise the requests are declived
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

