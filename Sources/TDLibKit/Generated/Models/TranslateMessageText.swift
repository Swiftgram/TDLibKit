//
//  TranslateMessageText.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8921c22f
//  https://github.com/tdlib/td/tree/8921c22f
//

import Foundation


/// Extracts text or caption of the given message and translates it to the given language; must not be used in secret chats. If the current user is a Telegram Premium user, then text formatting is preserved
public struct TranslateMessageText: Codable, Equatable, Hashable {

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

