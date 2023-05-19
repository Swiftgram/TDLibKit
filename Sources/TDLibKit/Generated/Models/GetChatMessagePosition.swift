//
//  GetChatMessagePosition.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-1da39552
//  https://github.com/tdlib/td/tree/1da39552
//

import Foundation


/// Returns approximate 1-based position of a message among messages, which can be found by the specified filter in the chat. Cannot be used in secret chats
public struct GetChatMessagePosition: Codable, Equatable {

    /// Identifier of the chat in which to find message position
    public let chatId: Int64?

    /// Filter for message content; searchMessagesFilterEmpty, searchMessagesFilterUnreadMention, searchMessagesFilterUnreadReaction, and searchMessagesFilterFailedToSend are unsupported in this function
    public let filter: SearchMessagesFilter?

    /// Message identifier
    public let messageId: Int64?

    /// If not 0, only messages in the specified thread will be considered; supergroups only
    public let messageThreadId: Int64?


    public init(
        chatId: Int64?,
        filter: SearchMessagesFilter?,
        messageId: Int64?,
        messageThreadId: Int64?
    ) {
        self.chatId = chatId
        self.filter = filter
        self.messageId = messageId
        self.messageThreadId = messageThreadId
    }
}

