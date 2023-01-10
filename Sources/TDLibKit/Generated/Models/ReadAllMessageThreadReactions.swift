//
//  ReadAllMessageThreadReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.10-ed2644c2
//  https://github.com/tdlib/td/tree/ed2644c2
//

import Foundation


/// Marks all reactions in a forum topic as read
public struct ReadAllMessageThreadReactions: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64?

    /// Message thread identifier in which reactions are marked as read
    public let messageThreadId: Int64?


    public init(
        chatId: Int64?,
        messageThreadId: Int64?
    ) {
        self.chatId = chatId
        self.messageThreadId = messageThreadId
    }
}

