//
//  GetPollOptionProperties.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-1677a0c7
//  https://github.com/tdlib/td/tree/1677a0c7
//

import Foundation


/// Returns properties of a poll option. This is an offline method
public struct GetPollOptionProperties: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Identifier of the message
    public let messageId: Int64?

    /// Unique identifier of the answer option, which properties will be returned
    public let pollOptionId: String?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        pollOptionId: String?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.pollOptionId = pollOptionId
    }
}

