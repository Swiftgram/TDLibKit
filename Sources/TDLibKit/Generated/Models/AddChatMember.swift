//
//  AddChatMember.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Adds a new member to a chat. Members can't be added to private or secret chats
public struct AddChatMember: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// The number of earlier messages from the chat to be forwarded to the new member; up to 100. Ignored for supergroups and channels
    public let forwardLimit: Int

    /// Identifier of the user
    public let userId: Int


    public init(
        chatId: Int64,
        forwardLimit: Int,
        userId: Int
    ) {
        self.chatId = chatId
        self.forwardLimit = forwardLimit
        self.userId = userId
    }
}

