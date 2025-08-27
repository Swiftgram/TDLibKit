//
//  GetChatMessagePosition.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-5c77c469
//  https://github.com/tdlib/td/tree/5c77c469
//

import Foundation


/// Returns approximate 1-based position of a message among messages, which can be found by the specified filter in the chat and topic. Cannot be used in secret chats
public struct GetChatMessagePosition: Codable, Equatable, Hashable {

    /// Identifier of the chat in which to find message position
    public let chatId: Int64?

    /// Filter for message content; searchMessagesFilterEmpty, searchMessagesFilterUnreadMention, searchMessagesFilterUnreadReaction, and searchMessagesFilterFailedToSend are unsupported in this function
    public let filter: SearchMessagesFilter?

    /// Message identifier
    public let messageId: Int64?

    /// Pass topic identifier to get position among messages only in specific topic; pass null to get position among all chat messages
    public let topicId: MessageTopic?


    public init(
        chatId: Int64?,
        filter: SearchMessagesFilter?,
        messageId: Int64?,
        topicId: MessageTopic?
    ) {
        self.chatId = chatId
        self.filter = filter
        self.messageId = messageId
        self.topicId = topicId
    }
}

