//
//  GetMessageThreadHistory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Returns messages in a message thread of a message. Can be used only if message.can_get_message_thread == true. Message thread of a channel message is in the channel's linked supergroup. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id). For optimal performance the number of returned messages is chosen by the library
public struct GetMessageThreadHistory: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// Identifier of the message starting from which history must be fetched; use 0 to get results from the last message
    public let fromMessageId: Int64

    /// The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than or equal to -offset. Fewer messages may be returned than specified by the limit, even if the end of the message thread history has not been reached
    public let limit: Int

    /// Message identifier, which thread history needs to be returned
    public let messageId: Int64

    /// Specify 0 to get results from exactly the from_message_id or a negative offset up to 99 to get additionally some newer messages
    public let offset: Int


    public init(
        chatId: Int64,
        fromMessageId: Int64,
        limit: Int,
        messageId: Int64,
        offset: Int
    ) {
        self.chatId = chatId
        self.fromMessageId = fromMessageId
        self.limit = limit
        self.messageId = messageId
        self.offset = offset
    }
}

