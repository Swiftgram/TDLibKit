//
//  ChatMember.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describes a user or a chat as a member of another chat
public struct ChatMember: Codable, Equatable {

    /// Identifier of a user that invited/promoted/banned this member in the chat; 0 if unknown
    public let inviterUserId: Int64

    /// Point in time (Unix timestamp) when the user joined the chat
    public let joinedChatDate: Int

    /// Identifier of the chat member. Currently, other chats can be only Left or Banned. Only supergroups and channels can have other chats as Left or Banned members and these chats must be supergroups or channels
    public let memberId: MessageSender

    /// Status of the member in the chat
    public let status: ChatMemberStatus


    public init(
        inviterUserId: Int64,
        joinedChatDate: Int,
        memberId: MessageSender,
        status: ChatMemberStatus
    ) {
        self.inviterUserId = inviterUserId
        self.joinedChatDate = joinedChatDate
        self.memberId = memberId
        self.status = status
    }
}

