//
//  GetChatHistory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Returns messages in a chat. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id). For optimal performance, the number of returned messages is chosen by TDLib. This is an offline request if only_local is true
public struct GetChatHistory: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// Identifier of the message starting from which history must be fetched; use 0 to get results from the last message
    public let fromMessageId: Int64

    /// The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than or equal to -offset. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int

    /// Specify 0 to get results from exactly the from_message_id or a negative offset up to 99 to get additionally some newer messages
    public let offset: Int

    /// If true, returns only messages that are available locally without sending network requests
    public let onlyLocal: Bool


    public init(
        chatId: Int64,
        fromMessageId: Int64,
        limit: Int,
        offset: Int,
        onlyLocal: Bool
    ) {
        self.chatId = chatId
        self.fromMessageId = fromMessageId
        self.limit = limit
        self.offset = offset
        self.onlyLocal = onlyLocal
    }
}
