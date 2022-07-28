//
//  EditInlineMessageMedia.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Edits the content of a message with an animation, an audio, a document, a photo or a video in an inline message sent via a bot; for bots only
public struct EditInlineMessageMedia: Codable, Equatable {

    /// Inline message identifier
    public let inlineMessageId: String?

    /// New content of the message. Must be one of the following types: inputMessageAnimation, inputMessageAudio, inputMessageDocument, inputMessagePhoto or inputMessageVideo
    public let inputMessageContent: InputMessageContent?

    /// The new message reply markup; pass null if none; for bots only
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

