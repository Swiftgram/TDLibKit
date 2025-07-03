//
//  UnpinAllDirectMessagesChatTopicMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Removes all pinned messages from the topic in a channel direct messages chat administered by the current user
public struct UnpinAllDirectMessagesChatTopicMessages: Codable, Equatable, Hashable {

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

