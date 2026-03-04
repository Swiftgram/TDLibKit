//
//  SummarizeMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.62-af0cb1d3
//  https://github.com/tdlib/td/tree/af0cb1d3
//

import Foundation


/// Summarizes content of the message with non-empty summary_language_code
public struct SummarizeMessage: Codable, Equatable, Hashable {

    /// Identifier of the chat to which the message belongs
    public let chatId: Int64?

    /// Identifier of the message
    public let messageId: Int64?

    /// Pass a language code to which the summary will be translated; may be empty if translation isn't needed. See translateText.to_language_code for the list of supported values
    public let translateToLanguageCode: String?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        translateToLanguageCode: String?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.translateToLanguageCode = translateToLanguageCode
    }
}

