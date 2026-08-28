//
//  ReadAllForumTopicPollVotes.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Marks all poll votes in a topic in a forum supergroup chat as read
public struct ReadAllForumTopicPollVotes: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Forum topic identifier in which poll votes are marked as read
    public let forumTopicId: Int?


    public init(
        chatId: Int64?,
        forumTopicId: Int?
    ) {
        self.chatId = chatId
        self.forumTopicId = forumTopicId
    }
}

