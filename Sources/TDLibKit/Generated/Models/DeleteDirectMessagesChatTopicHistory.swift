//
//  DeleteDirectMessagesChatTopicHistory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-4269f54e
//  https://github.com/tdlib/td/tree/4269f54e
//

import Foundation


/// Deletes all messages in the topic in a channel direct messages chat administered by the current user
public struct DeleteDirectMessagesChatTopicHistory: Codable, Equatable, Hashable {

    /// Chat identifier of the channel direct messages chat
    public let chatId: Int64?

    /// Identifier of the topic which messages will be deleted
    public let topicId: Int64?


    public init(
        chatId: Int64?,
        topicId: Int64?
    ) {
        self.chatId = chatId
        self.topicId = topicId
    }
}

