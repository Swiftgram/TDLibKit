//
//  GetChatMessagePosition.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.24-437c2d0c
//  https://github.com/tdlib/td/tree/437c2d0c
//

import Foundation


/// Returns approximate 1-based position of a message among messages, which can be found by the specified filter in the chat. Cannot be used in secret chats
public struct GetChatMessagePosition: Codable, Equatable, Hashable {

    /// Identifier of the chat in which to find message position
    public let chatId: Int64?

    /// Filter for message content; searchMessagesFilterEmpty, searchMessagesFilterUnreadMention, searchMessagesFilterUnreadReaction, and searchMessagesFilterFailedToSend are unsupported in this function
    public let filter: SearchMessagesFilter?

    /// Message identifier
    public let messageId: Int64?

    /// If not 0, only messages in the specified thread will be considered; supergroups only
    public let messageThreadId: Int64?

    /// If not null, only messages in the specified Saved Messages topic will be considered; pass null to consider all relevant messages, or for chats other than Saved Messages
    public let savedMessagesTopic: SavedMessagesTopic?


    public init(
        chatId: Int64?,
        filter: SearchMessagesFilter?,
        messageId: Int64?,
        messageThreadId: Int64?,
        savedMessagesTopic: SavedMessagesTopic?
    ) {
        self.chatId = chatId
        self.filter = filter
        self.messageId = messageId
        self.messageThreadId = messageThreadId
        self.savedMessagesTopic = savedMessagesTopic
    }
}

