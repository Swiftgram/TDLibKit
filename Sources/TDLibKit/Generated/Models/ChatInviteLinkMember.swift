//
//  ChatInviteLinkMember.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-f4d20e20
//  https://github.com/tdlib/td/tree/f4d20e20
//

import Foundation


/// Describes a chat member joined a chat by an invite link
public struct ChatInviteLinkMember: Codable {

    /// Point in time (Unix timestamp) when the user joined the chat
    public let joinedChatDate: Int

    /// User identifier
    public let userId: Int64


    public init(
        joinedChatDate: Int,
        userId: Int64
    ) {
        self.joinedChatDate = joinedChatDate
        self.userId = userId
    }
}

