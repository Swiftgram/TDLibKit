//
//  GetChatSparseMessagePositions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Returns sparse positions of messages of the specified type in the chat to be used for shared media scroll implementation. Returns the results in reverse chronological order (i.e., in order of decreasing message_id). Cannot be used in secret chats or with searchMessagesFilterFailedToSend filter without an enabled message database
public struct GetChatSparseMessagePositions: Codable, Equatable {

    /// Identifier of the chat in which to return information about message positions
    public let chatId: Int64?

    /// Filter for message content. Filters searchMessagesFilterEmpty, searchMessagesFilterMention, searchMessagesFilterUnreadMention, and searchMessagesFilterUnreadReaction are unsupported in this function
    public let filter: SearchMessagesFilter?

    /// The message identifier from which to return information about message positions
    public let fromMessageId: Int64?

    /// The expected number of message positions to be returned; 50-2000. A smaller number of positions can be returned, if there are not enough appropriate messages
    public let limit: Int?


    public init(
        chatId: Int64?,
        filter: SearchMessagesFilter?,
        fromMessageId: Int64?,
        limit: Int?
    ) {
        self.chatId = chatId
        self.filter = filter
        self.fromMessageId = fromMessageId
        self.limit = limit
    }
}

