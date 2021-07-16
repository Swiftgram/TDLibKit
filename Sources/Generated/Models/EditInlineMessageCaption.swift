//
//  EditInlineMessageCaption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Edits the caption of an inline message sent via a bot; for bots only
public struct EditInlineMessageCaption: Codable {

    /// New message content caption; 0-GetOption("message_caption_length_max") characters
    public let caption: FormattedText

    /// Inline message identifier
    public let inlineMessageId: String

    /// The new message reply markup
    public let replyMarkup: ReplyMarkup


    public init(
        caption: FormattedText,
        inlineMessageId: String,
        replyMarkup: ReplyMarkup
    ) {
        self.caption = caption
        self.inlineMessageId = inlineMessageId
        self.replyMarkup = replyMarkup
    }
}

