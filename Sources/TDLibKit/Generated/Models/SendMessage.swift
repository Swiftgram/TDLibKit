//
//  SendMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-8951949e
//  https://github.com/tdlib/td/tree/8951949e
//

import Foundation


/// Sends a message. Returns the sent message
public struct SendMessage: Codable, Equatable, Hashable {

    /// Target chat
    public let chatId: Int64?

    /// The content of the message to be sent
    public let inputMessageContent: InputMessageContent?

    /// If not 0, a message thread identifier in which the message will be sent
    public let messageThreadId: Int64?

    /// Options to be used to send the message; pass null to use default options
    public let options: MessageSendOptions?

    /// Markup for replying to the message; pass null if none; for bots only
    public let replyMarkup: ReplyMarkup?

    /// Information about the message or story to be replied; pass null if none
    public let replyTo: InputMessageReplyTo?


    public init(
        chatId: Int64?,
        inputMessageContent: InputMessageContent?,
        messageThreadId: Int64?,
        options: MessageSendOptions?,
        replyMarkup: ReplyMarkup?,
        replyTo: InputMessageReplyTo?
    ) {
        self.chatId = chatId
        self.inputMessageContent = inputMessageContent
        self.messageThreadId = messageThreadId
        self.options = options
        self.replyMarkup = replyMarkup
        self.replyTo = replyTo
    }
}

