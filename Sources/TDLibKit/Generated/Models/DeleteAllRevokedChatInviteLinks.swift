//
//  DeleteAllRevokedChatInviteLinks.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
//

import Foundation


/// Deletes all revoked chat invite links created by a given chat administrator. Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other links
public struct DeleteAllRevokedChatInviteLinks: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// User identifier of a chat administrator, which links will be deleted. Must be an identifier of the current user for non-owner
    public let creatorUserId: Int


    public init(
        chatId: Int64,
        creatorUserId: Int
    ) {
        self.chatId = chatId
        self.creatorUserId = creatorUserId
    }
}

