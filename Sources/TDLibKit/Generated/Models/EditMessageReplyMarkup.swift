//
//  EditMessageReplyMarkup.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-b102c3ad
//  https://github.com/tdlib/td/tree/b102c3ad
//

import Foundation


/// Edits the message reply markup; for bots only. Returns the edited message after the edit is completed on the server side. Can be used only if message.can_be_edited == true
public struct EditMessageReplyMarkup: Codable, Equatable, Hashable {

    /// The chat the message belongs to
    public let chatId: Int64?

    /// Identifier of the message
    public let messageId: Int64?

    /// The new message reply markup; pass null if none
    public let replyMarkup: ReplyMarkup?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        replyMarkup: ReplyMarkup?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.replyMarkup = replyMarkup
    }
}

