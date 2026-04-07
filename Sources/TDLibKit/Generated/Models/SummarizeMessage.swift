//
//  SummarizeMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8ff05a0e
//  https://github.com/tdlib/td/tree/8ff05a0e
//

import Foundation


/// Summarizes content of the message with non-empty summary_language_code
public struct SummarizeMessage: Codable, Equatable, Hashable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64?

    /// Identifier of the message
    public let messageId: Int64?

    /// Tone of the summarization; see translateText.tone for the list of supported values
    public let tone: String?

    /// Pass a language code to which the summary will be translated; pass an empty string if translation isn't needed. See translateText.to_language_code for the list of supported values
    public let translateToLanguageCode: String?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        tone: String?,
        translateToLanguageCode: String?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.tone = tone
        self.translateToLanguageCode = translateToLanguageCode
    }
}

