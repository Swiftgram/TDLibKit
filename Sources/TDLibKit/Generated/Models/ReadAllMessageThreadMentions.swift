//
//  ReadAllMessageThreadMentions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-b498497b
//  https://github.com/tdlib/td/tree/b498497b
//

import Foundation


/// Marks all mentions in a forum topic as read
public struct ReadAllMessageThreadMentions: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Message thread identifier in which mentions are marked as read
    public let messageThreadId: Int64?


    public init(
        chatId: Int64?,
        messageThreadId: Int64?
    ) {
        self.chatId = chatId
        self.messageThreadId = messageThreadId
    }
}

