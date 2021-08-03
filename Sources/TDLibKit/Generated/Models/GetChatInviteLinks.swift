//
//  GetChatInviteLinks.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Returns invite links for a chat created by specified administrator. Requires administrator privileges and can_invite_users right in the chat to get own links and owner privileges to get other links
public struct GetChatInviteLinks: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// User identifier of a chat administrator. Must be an identifier of the current user for non-owner
    public let creatorUserId: Int

    /// Pass true if revoked links needs to be returned instead of active or expired
    public let isRevoked: Bool

    /// The maximum number of invite links to return
    public let limit: Int

    /// Creation date of an invite link starting after which to return invite links; use 0 to get results from the beginning
    public let offsetDate: Int

    /// Invite link starting after which to return invite links; use empty string to get results from the beginning
    public let offsetInviteLink: String


    public init(
        chatId: Int64,
        creatorUserId: Int,
        isRevoked: Bool,
        limit: Int,
        offsetDate: Int,
        offsetInviteLink: String
    ) {
        self.chatId = chatId
        self.creatorUserId = creatorUserId
        self.isRevoked = isRevoked
        self.limit = limit
        self.offsetDate = offsetDate
        self.offsetInviteLink = offsetInviteLink
    }
}

