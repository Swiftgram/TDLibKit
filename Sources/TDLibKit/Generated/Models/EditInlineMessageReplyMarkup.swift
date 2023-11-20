//
//  EditInlineMessageReplyMarkup.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-ec788c75
//  https://github.com/tdlib/td/tree/ec788c75
//

import Foundation


/// Edits the reply markup of an inline message sent via a bot; for bots only
public struct EditInlineMessageReplyMarkup: Codable, Equatable, Hashable {

    /// Inline message identifier
    public let inlineMessageId: String?

    /// The new message reply markup; pass null if none
    public let replyMarkup: ReplyMarkup?


    public init(
        inlineMessageId: String?,
        replyMarkup: ReplyMarkup?
    ) {
        self.inlineMessageId = inlineMessageId
        self.replyMarkup = replyMarkup
    }
}

