//
//  ResendMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-ec788c75
//  https://github.com/tdlib/td/tree/ec788c75
//

import Foundation


/// Resends messages which failed to send. Can be called only for messages for which messageSendingStateFailed.can_retry is true and after specified in messageSendingStateFailed.retry_after time passed. If a message is re-sent, the corresponding failed to send message is deleted. Returns the sent messages in the same order as the message identifiers passed in message_ids. If a message can't be re-sent, null will be returned instead of the message
public struct ResendMessages: Codable, Equatable, Hashable {

    /// Identifier of the chat to send messages
    public let chatId: Int64?

    /// Identifiers of the messages to resend. Message identifiers must be in a strictly increasing order
    public let messageIds: [Int64]?

    /// New manually chosen quote from the message to be replied; pass null if none. Ignored if more than one message is re-sent, or if messageSendingStateFailed.need_another_reply_quote == false
    public let quote: FormattedText?


    public init(
        chatId: Int64?,
        messageIds: [Int64]?,
        quote: FormattedText?
    ) {
        self.chatId = chatId
        self.messageIds = messageIds
        self.quote = quote
    }
}

