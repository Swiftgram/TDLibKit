//
//  AddChatMember.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Adds a new member to a chat. Members can't be added to private or secret chats
public struct AddChatMember: Codable, Equatable {

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

