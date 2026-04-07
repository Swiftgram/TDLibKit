//
//  ComposeTextWithAi.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8ff05a0e
//  https://github.com/tdlib/td/tree/8ff05a0e
//

import Foundation


/// Changes text using an AI model; must not be used in secret chats. May return an error with a message "AICOMPOSE_FLOOD_PREMIUM" if Telegram Premium is required to send further requests
public struct ComposeTextWithAi: Codable, Equatable, Hashable {

    /// Pass true to add emoji to the text
    public let addEmojis: Bool?

    /// Name of the style of the resulted text; handle updateTextCompositionStyles to get the list of supported styles; pass an empty string to keep the current style of the text
    public let styleName: String?

    /// The original text
    public let text: FormattedText?

    /// Pass a language code to which the text will be translated; pass an empty string if translation isn't needed. See translateText.to_language_code for the list of supported values
    public let translateToLanguageCode: String?


    public init(
        addEmojis: Bool?,
        styleName: String?,
        text: FormattedText?,
        translateToLanguageCode: String?
    ) {
        self.addEmojis = addEmojis
        self.styleName = styleName
        self.text = text
        self.translateToLanguageCode = translateToLanguageCode
    }
}

