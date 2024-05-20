//
//  CreateChatInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Creates a new invite link for a chat. Available for basic groups, supergroups, and channels. Requires administrator privileges and can_invite_users right in the chat
public struct CreateChatInviteLink: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Pass true if users joining the chat via the link need to be approved by chat administrators. In this case, member_limit must be 0
    public let createsJoinRequest: Bool?

    /// Point in time (Unix timestamp) when the link will expire; pass 0 if never
    public let expirationDate: Int?

    /// The maximum number of chat members that can join the chat via the link simultaneously; 0-99999; pass 0 if not limited
    public let memberLimit: Int?

    /// Invite link name; 0-32 characters
    public let name: String?


    public init(
        chatId: Int64?,
        createsJoinRequest: Bool?,
        expirationDate: Int?,
        memberLimit: Int?,
        name: String?
    ) {
        self.chatId = chatId
        self.createsJoinRequest = createsJoinRequest
        self.expirationDate = expirationDate
        self.memberLimit = memberLimit
        self.name = name
    }
}

