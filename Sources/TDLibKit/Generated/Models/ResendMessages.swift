//
//  ResendMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Resends messages which failed to send. Can be called only for messages for which messageSendingStateFailed.can_retry is true and after specified in messageSendingStateFailed.retry_after time passed. If a message is re-sent, the corresponding failed to send message is deleted. Returns the sent messages in the same order as the message identifiers passed in message_ids. If a message can't be re-sent, null will be returned instead of the message
public struct ResendMessages: Codable, Equatable {

    /// Identifier of the chat to send messages
    public let chatId: Int64?

    /// Identifiers of the messages to resend. Message identifiers must be in a strictly increasing order
    public let messageIds: [Int64]?


    public init(
        chatId: Int64?,
        messageIds: [Int64]?
    ) {
        self.chatId = chatId
        self.messageIds = messageIds
    }
}

