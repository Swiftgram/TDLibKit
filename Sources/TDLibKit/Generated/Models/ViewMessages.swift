//
//  ViewMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Informs TDLib that messages are being viewed by the user. Sponsored messages must be marked as viewed only when the entire text of the message is shown on the screen (excluding the button). Many useful activities depend on whether the messages are currently being viewed or not (e.g., marking messages as read, incrementing a view counter, updating a view counter, removing deleted messages in supergroups and channels)
public struct ViewMessages: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64?

    /// Pass true to mark as read the specified messages even the chat is closed
    public let forceRead: Bool?

    /// The identifiers of the messages being viewed
    public let messageIds: [Int64]?

    /// If not 0, a message thread identifier in which the messages are being viewed
    public let messageThreadId: Int64?


    public init(
        chatId: Int64?,
        forceRead: Bool?,
        messageIds: [Int64]?,
        messageThreadId: Int64?
    ) {
        self.chatId = chatId
        self.forceRead = forceRead
        self.messageIds = messageIds
        self.messageThreadId = messageThreadId
    }
}

