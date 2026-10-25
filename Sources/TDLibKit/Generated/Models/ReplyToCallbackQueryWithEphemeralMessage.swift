//
//  ReplyToCallbackQueryWithEphemeralMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-025086e3
//  https://github.com/tdlib/td/tree/025086e3
//

import Foundation


/// Replies to a callback query with an ephemeral message; for bots only
public struct ReplyToCallbackQueryWithEphemeralMessage: Codable, Equatable, Hashable {

    /// Identifier of the callback query
    public let callbackQueryId: TdInt64?

    /// New content of the message. Must be one of the following types: inputMessageText, inputMessageAnimation, inputMessageAudio, inputMessageDocument, inputMessagePhoto, inputMessageRichMessage, inputMessageSticker, inputMessageVideo, inputMessageVideoNote, inputMessageVoiceNote
    public let inputMessageContent: InputMessageContent?

    /// Pass true if the content of the message must be protected from forwarding and saving
    public let protectContent: Bool?

    /// Pass true if the ephemeral message must replace the message from which the callback query originated
    public let replaceCallbackQueryMessage: Bool?

    /// The new message reply markup; pass null if none
    public let replyMarkup: ReplyMarkup?


    public init(
        callbackQueryId: TdInt64?,
        inputMessageContent: InputMessageContent?,
        protectContent: Bool?,
        replaceCallbackQueryMessage: Bool?,
        replyMarkup: ReplyMarkup?
    ) {
        self.callbackQueryId = callbackQueryId
        self.inputMessageContent = inputMessageContent
        self.protectContent = protectContent
        self.replaceCallbackQueryMessage = replaceCallbackQueryMessage
        self.replyMarkup = replyMarkup
    }
}

