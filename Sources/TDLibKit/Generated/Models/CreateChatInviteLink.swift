//
//  CreateChatInviteLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-5f19e026
//  https://github.com/tdlib/td/tree/5f19e026
//

import Foundation


/// Creates a new invite link for a chat. Available for basic groups, supergroups, and channels. Requires administrator privileges and can_invite_users right in the chat
public struct CreateChatInviteLink: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// Point in time (Unix timestamp) when the link will expire; pass 0 if never
    public let expireDate: Int

    /// The maximum number of chat members that can join the chat by the link simultaneously; 0-99999; pass 0 if not limited
    public let memberLimit: Int


    public init(
        chatId: Int64,
        expireDate: Int,
        memberLimit: Int
    ) {
        self.chatId = chatId
        self.expireDate = expireDate
        self.memberLimit = memberLimit
    }
}

