//
//  ToggleForumTopicIsClosed.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-0150094c
//  https://github.com/tdlib/td/tree/0150094c
//

import Foundation


/// Toggles whether a topic is closed in a forum supergroup chat; requires can_manage_topics administrator right in the supergroup unless the user is creator of the topic
public struct ToggleForumTopicIsClosed: Codable, Equatable {

    /// Identifier of the chat
    public let chatId: Int64?

    /// Pass true to close the topic; pass false to reopen it
    public let isClosed: Bool?

    /// Message thread identifier of the forum topic
    public let messageThreadId: Int64?


    public init(
        chatId: Int64?,
        isClosed: Bool?,
        messageThreadId: Int64?
    ) {
        self.chatId = chatId
        self.isClosed = isClosed
        self.messageThreadId = messageThreadId
    }
}

