//
//  GetForumTopicLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.61-6d509061
//  https://github.com/tdlib/td/tree/6d509061
//

import Foundation


/// Returns an HTTPS link to a topic in a forum supergroup chat. This is an offline method
public struct GetForumTopicLink: Codable, Equatable, Hashable {

    /// Identifier of the chat
    public let chatId: Int64?

    /// Forum topic identifier
    public let forumTopicId: Int?


    public init(
        chatId: Int64?,
        forumTopicId: Int?
    ) {
        self.chatId = chatId
        self.forumTopicId = forumTopicId
    }
}

