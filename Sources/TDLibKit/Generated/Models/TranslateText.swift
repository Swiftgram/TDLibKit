//
//  TranslateText.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Translates a text to the given language. Returns a 404 error if the translation can't be performed
public struct TranslateText: Codable, Equatable {

    /// A two-letter ISO 639-1 language code of the language from which the message is translated. If empty, the language will be detected automatically
    public let fromLanguageCode: String?

    /// Text to translate
    public let text: String?

    /// A two-letter ISO 639-1 language code of the language to which the message is translated
    public let toLanguageCode: String?


    public init(
        fromLanguageCode: String?,
        text: String?,
        toLanguageCode: String?
    ) {
        self.fromLanguageCode = fromLanguageCode
        self.text = text
        self.toLanguageCode = toLanguageCode
    }
}

