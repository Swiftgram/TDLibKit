//
//  GetForumTopic.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-e4796b9b
//  https://github.com/tdlib/td/tree/e4796b9b
//

import Foundation


/// Returns information about a forum topic
public struct GetForumTopic: Codable, Equatable, Hashable {

    /// Identifier of the chat
    public let chatId: Int64?

    /// Message thread identifier of the forum topic
    public let messageThreadId: Int64?


    public init(
        chatId: Int64?,
        messageThreadId: Int64?
    ) {
        self.chatId = chatId
        self.messageThreadId = messageThreadId
    }
}

