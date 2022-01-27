//
//  CreateChatInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.0-789b9c0a
//  https://github.com/tdlib/td/tree/789b9c0a
//

import Foundation


/// Creates a new invite link for a chat. Available for basic groups, supergroups, and channels. Requires administrator privileges and can_invite_users right in the chat
public struct CreateChatInviteLink: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64?

    /// True, if the link only creates join request. If true, member_limit must not be specified
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

