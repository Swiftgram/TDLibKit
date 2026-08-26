//
//  EditCallbackQueryMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-afbfb4d8
//  https://github.com/tdlib/td/tree/afbfb4d8
//

import Foundation


/// Edits the message from which a callback query has originated with an ephemeral message; for bots only
public struct EditCallbackQueryMessage: Codable, Equatable, Hashable {

    /// Identifier of the callback query
    public let callbackQueryId: TdInt64?

    /// New content of the message. Must be one of the following types: inputMessageText, inputMessageAnimation, inputMessageAudio, inputMessageDocument, inputMessagePhoto, inputMessageRichMessage, inputMessageSticker, inputMessageVideo, inputMessageVideoNote, inputMessageVoiceNote
    public let inputMessageContent: InputMessageContent?

    /// Pass true if the content of the message must be protected from forwarding and saving
    public let protectContent: Bool?

    /// The new message reply markup; pass null if none
    public let replyMarkup: ReplyMarkup?


    public init(
        callbackQueryId: TdInt64?,
        inputMessageContent: InputMessageContent?,
        protectContent: Bool?,
        replyMarkup: ReplyMarkup?
    ) {
        self.callbackQueryId = callbackQueryId
        self.inputMessageContent = inputMessageContent
        self.protectContent = protectContent
        self.replyMarkup = replyMarkup
    }
}

