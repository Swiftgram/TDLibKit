//
//  SearchMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Searches for messages in all chats except secret chats. Returns the results in reverse chronological order (i.e., in order of decreasing (date, chat_id, message_id)). For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
public struct SearchMessages: Codable, Equatable, Hashable {

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

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?

    /// Pass true to search only for messages in channels
    public let onlyInChannels: Bool?

    /// Query to search for
    public let query: String?


    public init(
        chatList: ChatList?,
        filter: SearchMessagesFilter?,
        limit: Int?,
        maxDate: Int?,
        minDate: Int?,
        offset: String?,
        onlyInChannels: Bool?,
        query: String?
    ) {
        self.chatList = chatList
        self.filter = filter
        self.limit = limit
        self.maxDate = maxDate
        self.minDate = minDate
        self.offset = offset
        self.onlyInChannels = onlyInChannels
        self.query = query
    }
}

