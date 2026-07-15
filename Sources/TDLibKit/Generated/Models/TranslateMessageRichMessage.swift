//
//  TranslateMessageRichMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-07d3a097
//  https://github.com/tdlib/td/tree/07d3a097
//

import Foundation


/// Extracts rich message of the given message and translates it to the given language
public struct TranslateMessageRichMessage: Codable, Equatable, Hashable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64?

    /// Identifier of the message
    public let messageId: Int64?

    /// Language code of the language to which the message is translated. See translateText.to_language_code for the list of supported values
    public let toLanguageCode: String?

    /// Tone of the translation; see translateText.tone for the list of supported values
    public let tone: String?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        toLanguageCode: String?,
        tone: String?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.toLanguageCode = toLanguageCode
        self.tone = tone
    }
}

