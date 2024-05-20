//
//  EditMessageCaption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Edits the message content caption. Returns the edited message after the edit is completed on the server side
public struct EditMessageCaption: Codable, Equatable, Hashable {

    /// New message content caption; 0-getOption("message_caption_length_max") characters; pass null to remove caption
    public let caption: FormattedText?

    /// The chat the message belongs to
    public let chatId: Int64?

    /// Identifier of the message
    public let messageId: Int64?

    /// The new message reply markup; pass null if none; for bots only
    public let replyMarkup: ReplyMarkup?


    public init(
        caption: FormattedText?,
        chatId: Int64?,
        messageId: Int64?,
        replyMarkup: ReplyMarkup?
    ) {
        self.caption = caption
        self.chatId = chatId
        self.messageId = messageId
        self.replyMarkup = replyMarkup
    }
}

