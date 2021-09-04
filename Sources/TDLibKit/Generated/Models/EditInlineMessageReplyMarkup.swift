//
//  EditInlineMessageReplyMarkup.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Edits the reply markup of an inline message sent via a bot; for bots only
public struct EditInlineMessageReplyMarkup: Codable {

    /// Inline message identifier
    public let inlineMessageId: String

    /// The new message reply markup
    public let replyMarkup: ReplyMarkup


    public init(
        inlineMessageId: String,
        replyMarkup: ReplyMarkup
    ) {
        self.inlineMessageId = inlineMessageId
        self.replyMarkup = replyMarkup
    }
}
