//
//  GetDirectMessagesChatTopic.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-5f9312dc
//  https://github.com/tdlib/td/tree/5f9312dc
//

import Foundation


/// Returns information about the topic in a channel direct messages chat administered by the current user
public struct GetDirectMessagesChatTopic: Codable, Equatable, Hashable {

    /// Chat identifier of the channel direct messages chat
    public let chatId: Int64?

    /// Identifier of the topic to get
    public let topicId: Int64?


    public init(
        chatId: Int64?,
        topicId: Int64?
    ) {
        self.chatId = chatId
        self.topicId = topicId
    }
}

