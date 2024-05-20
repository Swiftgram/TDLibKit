//
//  AddChatMember.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Adds a new member to a chat; requires can_invite_users member right. Members can't be added to private or secret chats. Returns information about members that weren't added
public struct AddChatMember: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// The number of earlier messages from the chat to be forwarded to the new member; up to 100. Ignored for supergroups and channels, or if the added user is a bot
    public let forwardLimit: Int?

    /// Identifier of the user
    public let userId: Int64?


    public init(
        chatId: Int64?,
        forwardLimit: Int?,
        userId: Int64?
    ) {
        self.chatId = chatId
        self.forwardLimit = forwardLimit
        self.userId = userId
    }
}

