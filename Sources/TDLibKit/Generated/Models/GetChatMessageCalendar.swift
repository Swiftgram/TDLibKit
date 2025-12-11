//
//  GetChatMessageCalendar.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Returns information about the next messages of the specified type in the chat split by days. Returns the results in reverse chronological order. Can return partial result for the last returned day. Behavior of this method depends on the value of the option "utc_time_offset"
public struct GetChatMessageCalendar: Codable, Equatable, Hashable {

    /// Identifier of the chat in which to return information about messages
    public let chatId: Int64?

    /// Filter for message content. Filters searchMessagesFilterEmpty, searchMessagesFilterMention, searchMessagesFilterUnreadMention, and searchMessagesFilterUnreadReaction are unsupported in this function
    public let filter: SearchMessagesFilter?

    /// The message identifier from which to return information about messages; use 0 to get results from the last message
    public let fromMessageId: Int64?

    /// Pass topic identifier to get the result only in specific topic; pass null to get the result in all topics; forum topics and message threads aren't supported
    public let topicId: MessageTopic?


    public init(
        chatId: Int64?,
        filter: SearchMessagesFilter?,
        fromMessageId: Int64?,
        topicId: MessageTopic?
    ) {
        self.chatId = chatId
        self.filter = filter
        self.fromMessageId = fromMessageId
        self.topicId = topicId
    }
}

