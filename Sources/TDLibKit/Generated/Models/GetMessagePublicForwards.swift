//
//  GetMessagePublicForwards.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Returns forwarded copies of a channel message to different public channels. For optimal performance, the number of returned messages is chosen by TDLib
public struct GetMessagePublicForwards: Codable, Equatable {

    /// Chat identifier of the message
    public let chatId: Int64?

    /// The maximum number of messages to be returned; must be positive and can't be greater than 100. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
    public let limit: Int?

    /// Message identifier
    public let messageId: Int64?

    /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
    public let offset: String?


    public init(
        chatId: Int64?,
        limit: Int?,
        messageId: Int64?,
        offset: String?
    ) {
        self.chatId = chatId
        self.limit = limit
        self.messageId = messageId
        self.offset = offset
    }
}

