//
//  EditMessageText.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.32-35cfcf5d
//  https://github.com/tdlib/td/tree/35cfcf5d
//

import Foundation


/// Edits the text of a message (or a text of a game message). Returns the edited message after the edit is completed on the server side. Can be used only if message.can_be_edited == true
public struct EditMessageText: Codable, Equatable, Hashable {

    /// The chat the message belongs to
    public let chatId: Int64?

    /// New text content of the message. Must be of type inputMessageText
    public let inputMessageContent: InputMessageContent?

    /// Identifier of the message
    public let messageId: Int64?

    /// The new message reply markup; pass null if none; for bots only
    public let replyMarkup: ReplyMarkup?


    public init(
        chatId: Int64?,
        inputMessageContent: InputMessageContent?,
        messageId: Int64?,
        replyMarkup: ReplyMarkup?
    ) {
        self.chatId = chatId
        self.inputMessageContent = inputMessageContent
        self.messageId = messageId
        self.replyMarkup = replyMarkup
    }
}

