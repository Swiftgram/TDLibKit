//
//  DeleteForumTopic.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Deletes all messages in a forum topic; requires can_delete_messages administrator right in the supergroup unless the user is creator of the topic, the topic has no messages from other users and has at most 11 messages
public struct DeleteForumTopic: Codable, Equatable, Hashable {

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

