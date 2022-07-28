//
//  SearchMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Searches for messages in all chats except secret chats. Returns the results in reverse chronological order (i.e., in order of decreasing (date, chat_id, message_id)). For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
public struct SearchMessages: Codable, Equatable {

    /// Chat list in which to search messages; pass null to search in all chats regardless of their chat list. Only Main and Archive chat lists are supported
    public let chatList: ChatList?

    /// Additional filter for messages to search; pass null to search for all messages. Filters searchMessagesFilterMention, searchMessagesFilterUnreadMention, searchMessagesFilterUnreadReaction, searchMessagesFilterFailedToSend, and searchMessagesFilterPinned are unsupported in this function
    public let filter: SearchMessagesFilter?

    /// The maximum number of messages to be returned; up to 100. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// If not 0, the maximum date of the messages to return
    public let maxDate: Int?

    /// If not 0, the minimum date of the messages to return
    public let minDate: Int?

    /// The chat identifier of the last found message, or 0 for the first request
    public let offsetChatId: Int64?

    /// The date of the message starting from which the results need to be fetched. Use 0 or any date in the future to get results from the last message
    public let offsetDate: Int?

    /// The message identifier of the last found message, or 0 for the first request
    public let offsetMessageId: Int64?

    /// Query to search for
    public let query: String?


    public init(
        chatList: ChatList?,
        filter: SearchMessagesFilter?,
        limit: Int?,
        maxDate: Int?,
        minDate: Int?,
        offsetChatId: Int64?,
        offsetDate: Int?,
        offsetMessageId: Int64?,
        query: String?
    ) {
        self.chatList = chatList
        self.filter = filter
        self.limit = limit
        self.maxDate = maxDate
        self.minDate = minDate
        self.offsetChatId = offsetChatId
        self.offsetDate = offsetDate
        self.offsetMessageId = offsetMessageId
        self.query = query
    }
}

