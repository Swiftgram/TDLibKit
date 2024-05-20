//
//  GetPollVoters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns message senders voted for the specified option in a non-anonymous polls. For optimal performance, the number of returned users is chosen by TDLib
public struct GetPollVoters: Codable, Equatable, Hashable {

    /// Identifier of the chat to which the poll belongs
    public let chatId: Int64?

    /// The maximum number of voters to be returned; must be positive and can't be greater than 50. For optimal performance, the number of returned voters is chosen by TDLib and can be smaller than the specified limit, even if the end of the voter list has not been reached
    public let limit: Int?

    /// Identifier of the message containing the poll
    public let messageId: Int64?

    /// Number of voters to skip in the result; must be non-negative
    public let offset: Int?

    /// 0-based identifier of the answer option
    public let optionId: Int?


    public init(
        chatId: Int64?,
        limit: Int?,
        messageId: Int64?,
        offset: Int?,
        optionId: Int?
    ) {
        self.chatId = chatId
        self.limit = limit
        self.messageId = messageId
        self.offset = offset
        self.optionId = optionId
    }
}

