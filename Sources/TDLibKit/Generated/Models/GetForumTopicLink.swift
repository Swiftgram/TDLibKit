//
//  GetForumTopicLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Returns an HTTPS link to a topic in a forum chat. This is an offline method
public struct GetForumTopicLink: Codable, Equatable, Hashable {

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

