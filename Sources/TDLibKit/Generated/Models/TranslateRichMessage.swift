//
//  TranslateRichMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-d8d46dfa
//  https://github.com/tdlib/td/tree/d8d46dfa
//

import Foundation


/// Translates a rich message to the given language
public struct TranslateRichMessage: Codable, Equatable, Hashable {

    /// Rich message to translate
    public let message: InputRichMessage?

    /// Language code of the language to which the message is translated. See translateText.to_language_code for the list of supported values
    public let toLanguageCode: String?

    /// Tone of the translation; see translateText.tone for the list of supported values
    public let tone: String?


    public init(
        message: InputRichMessage?,
        toLanguageCode: String?,
        tone: String?
    ) {
        self.message = message
        self.toLanguageCode = toLanguageCode
        self.tone = tone
    }
}

