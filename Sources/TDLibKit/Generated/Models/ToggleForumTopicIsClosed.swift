//
//  ToggleForumTopicIsClosed.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Toggles whether a topic is closed in a forum supergroup chat; requires can_manage_topics administrator right in the supergroup unless the user is creator of the topic
public struct ToggleForumTopicIsClosed: Codable, Equatable, Hashable {

    /// Identifier of the chat
    public let chatId: Int64?

    /// Forum topic identifier
    public let forumTopicId: Int?

    /// Pass true to close the topic; pass false to reopen it
    public let isClosed: Bool?


    public init(
        chatId: Int64?,
        forumTopicId: Int?,
        isClosed: Bool?
    ) {
        self.chatId = chatId
        self.forumTopicId = forumTopicId
        self.isClosed = isClosed
    }
}

