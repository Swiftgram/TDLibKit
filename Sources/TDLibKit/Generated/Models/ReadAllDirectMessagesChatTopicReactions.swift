//
//  ReadAllDirectMessagesChatTopicReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Removes all unread reactions in the topic in a channel direct messages chat administered by the current user
public struct ReadAllDirectMessagesChatTopicReactions: Codable, Equatable, Hashable {

    /// Identifier of the chat
    public let chatId: Int64?

    /// Topic identifier
    public let topicId: Int64?


    public init(
        chatId: Int64?,
        topicId: Int64?
    ) {
        self.chatId = chatId
        self.topicId = topicId
    }
}

