//
//  SetPinnedForumTopics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Changes the order of pinned forum topics; requires can_manage_topics right in the supergroup
public struct SetPinnedForumTopics: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// The new list of pinned forum topics
    public let messageThreadIds: [Int64]?


    public init(
        chatId: Int64?,
        messageThreadIds: [Int64]?
    ) {
        self.chatId = chatId
        self.messageThreadIds = messageThreadIds
    }
}

