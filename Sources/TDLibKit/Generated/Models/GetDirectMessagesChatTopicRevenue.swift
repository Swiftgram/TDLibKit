//
//  GetDirectMessagesChatTopicRevenue.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Returns the total number of Telegram Stars received by the channel chat for direct messages from the given topic
public struct GetDirectMessagesChatTopicRevenue: Codable, Equatable, Hashable {

    /// Chat identifier of the channel direct messages chat administered by the current user
    public let chatId: Int64?

    /// Identifier of the topic
    public let topicId: Int64?


    public init(
        chatId: Int64?,
        topicId: Int64?
    ) {
        self.chatId = chatId
        self.topicId = topicId
    }
}

