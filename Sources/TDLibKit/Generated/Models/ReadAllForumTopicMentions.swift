//
//  ReadAllForumTopicMentions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-0e88653d
//  https://github.com/tdlib/td/tree/0e88653d
//

import Foundation


/// Marks all mentions in a topic in a forum supergroup chat as read
public struct ReadAllForumTopicMentions: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Forum topic identifier in which mentions are marked as read
    public let forumTopicId: Int?


    public init(
        chatId: Int64?,
        forumTopicId: Int?
    ) {
        self.chatId = chatId
        self.forumTopicId = forumTopicId
    }
}

