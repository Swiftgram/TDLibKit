//
//  ReadAllForumTopicPollVotes.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Marks all poll votes in a topic in a forum supergroup chat as read
public struct ReadAllForumTopicPollVotes: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Identifier of the forum topic in which poll votes are marked as read
    public let forumTopicId: Int?


    public init(
        chatId: Int64?,
        forumTopicId: Int?
    ) {
        self.chatId = chatId
        self.forumTopicId = forumTopicId
    }
}

