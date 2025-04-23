//
//  StopBusinessPoll.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-6e32e56b
//  https://github.com/tdlib/td/tree/6e32e56b
//

import Foundation


/// Stops a poll sent on behalf of a business account; for bots only
public struct StopBusinessPoll: Codable, Equatable, Hashable {

    /// Unique identifier of business connection on behalf of which the message with the poll was sent
    public let businessConnectionId: String?

    /// The chat the message belongs to
    public let chatId: Int64?

    /// Identifier of the message containing the poll
    public let messageId: Int64?

    /// The new message reply markup; pass null if none
    public let replyMarkup: ReplyMarkup?


    public init(
        businessConnectionId: String?,
        chatId: Int64?,
        messageId: Int64?,
        replyMarkup: ReplyMarkup?
    ) {
        self.businessConnectionId = businessConnectionId
        self.chatId = chatId
        self.messageId = messageId
        self.replyMarkup = replyMarkup
    }
}

