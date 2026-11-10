//
//  SetPinnedForumTopics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ad2c1516
//  https://github.com/tdlib/td/tree/ad2c1516
//

import Foundation


/// Changes the order of pinned topics in a forum supergroup chat or a chat with a bot with topics; requires can_manage_topics administrator right in the supergroup
public struct SetPinnedForumTopics: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// The new list of identifiers of the pinned forum topics
    public let forumTopicIds: [Int]?


    public init(
        chatId: Int64?,
        forumTopicIds: [Int]?
    ) {
        self.chatId = chatId
        self.forumTopicIds = forumTopicIds
    }
}

