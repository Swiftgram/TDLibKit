//
//  EditMessageReplyMarkup.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
//

import Foundation


/// Edits the message reply markup; for bots only. Returns the edited message after the edit is completed on the server side
public struct EditMessageReplyMarkup: Codable {

    /// The chat the message belongs to
    public let chatId: Int64

    /// Identifier of the message
    public let messageId: Int64

    /// The new message reply markup
    public let replyMarkup: ReplyMarkup


    public init(
        chatId: Int64,
        messageId: Int64,
        replyMarkup: ReplyMarkup
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.replyMarkup = replyMarkup
    }
}

