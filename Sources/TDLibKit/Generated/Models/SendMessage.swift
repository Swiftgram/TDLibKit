//
//  SendMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Sends a message. Returns the sent message
public struct SendMessage: Codable {

    /// Target chat
    public let chatId: Int64

    /// The content of the message to be sent
    public let inputMessageContent: InputMessageContent

    /// If not 0, a message thread identifier in which the message will be sent
    public let messageThreadId: Int64

    /// Options to be used to send the message
    public let options: MessageSendOptions

    /// Markup for replying to the message; for bots only
    public let replyMarkup: ReplyMarkup

    /// Identifier of the message to reply to or 0
    public let replyToMessageId: Int64


    public init(
        chatId: Int64,
        inputMessageContent: InputMessageContent,
        messageThreadId: Int64,
        options: MessageSendOptions,
        replyMarkup: ReplyMarkup,
        replyToMessageId: Int64
    ) {
        self.chatId = chatId
        self.inputMessageContent = inputMessageContent
        self.messageThreadId = messageThreadId
        self.options = options
        self.replyMarkup = replyMarkup
        self.replyToMessageId = replyToMessageId
    }
}

