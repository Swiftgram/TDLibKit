//
//  EditBusinessMessageText.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-fe6f2f93
//  https://github.com/tdlib/td/tree/fe6f2f93
//

import Foundation


/// Edits the text of a text or game message sent on behalf of a business account; for bots only
public struct EditBusinessMessageText: Codable, Equatable, Hashable {

    /// Unique identifier of business connection on behalf of which the message was sent
    public let businessConnectionId: String?

    /// The chat the message belongs to
    public let chatId: Int64?

    /// New text content of the message. Must be of type inputMessageText
    public let inputMessageContent: InputMessageContent?

    /// Identifier of the message
    public let messageId: Int64?

    /// The new message reply markup; pass null if none
    public let replyMarkup: ReplyMarkup?


    public init(
        businessConnectionId: String?,
        chatId: Int64?,
        inputMessageContent: InputMessageContent?,
        messageId: Int64?,
        replyMarkup: ReplyMarkup?
    ) {
        self.businessConnectionId = businessConnectionId
        self.chatId = chatId
        self.inputMessageContent = inputMessageContent
        self.messageId = messageId
        self.replyMarkup = replyMarkup
    }
}

