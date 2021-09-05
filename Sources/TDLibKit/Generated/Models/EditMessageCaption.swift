//
//  EditMessageCaption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
//

import Foundation


/// Edits the message content caption. Returns the edited message after the edit is completed on the server side
public struct EditMessageCaption: Codable {

    /// New message content caption; 0-GetOption("message_caption_length_max") characters
    public let caption: FormattedText

    /// The chat the message belongs to
    public let chatId: Int64

    /// Identifier of the message
    public let messageId: Int64

    /// The new message reply markup; for bots only
    public let replyMarkup: ReplyMarkup


    public init(
        caption: FormattedText,
        chatId: Int64,
        messageId: Int64,
        replyMarkup: ReplyMarkup
    ) {
        self.caption = caption
        self.chatId = chatId
        self.messageId = messageId
        self.replyMarkup = replyMarkup
    }
}

