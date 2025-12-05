//
//  ReadAllForumTopicReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Marks all reactions in a topic in a forum supergroup chat or a chat with a bot with topics as read
public struct ReadAllForumTopicReactions: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Forum topic identifier in which reactions are marked as read
    public let forumTopicId: Int?


    public init(
        chatId: Int64?,
        forumTopicId: Int?
    ) {
        self.chatId = chatId
        self.forumTopicId = forumTopicId
    }
}

