//
//  EditInlineMessageText.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Edits the text of an inline text or game message sent via a bot; for bots only
public struct EditInlineMessageText: Codable, Equatable, Hashable {

    /// Inline message identifier
    public let inlineMessageId: String?

    /// New text content of the message. Must be of type inputMessageText
    public let inputMessageContent: InputMessageContent?

    /// The new message reply markup; pass null if none
    public let replyMarkup: ReplyMarkup?


    public init(
        inlineMessageId: String?,
        inputMessageContent: InputMessageContent?,
        replyMarkup: ReplyMarkup?
    ) {
        self.inlineMessageId = inlineMessageId
        self.inputMessageContent = inputMessageContent
        self.replyMarkup = replyMarkup
    }
}

