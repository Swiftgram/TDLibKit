//
//  ChatInviteLinkMember.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a chat member joined a chat via an invite link
public struct ChatInviteLinkMember: Codable, Equatable, Hashable {

    /// User identifier of the chat administrator, approved user join request
    public let approverUserId: Int64

    /// Point in time (Unix timestamp) when the user joined the chat
    public let joinedChatDate: Int

    /// User identifier
    public let userId: Int64

    /// True, if the user has joined the chat using an invite link for a chat folder
    public let viaChatFolderInviteLink: Bool


    public init(
        approverUserId: Int64,
        joinedChatDate: Int,
        userId: Int64,
        viaChatFolderInviteLink: Bool
    ) {
        self.approverUserId = approverUserId
        self.joinedChatDate = joinedChatDate
        self.userId = userId
        self.viaChatFolderInviteLink = viaChatFolderInviteLink
    }
}

