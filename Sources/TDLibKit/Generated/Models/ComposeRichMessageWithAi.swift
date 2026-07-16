//
//  ComposeRichMessageWithAi.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-1b08c83b
//  https://github.com/tdlib/td/tree/1b08c83b
//

import Foundation


/// Changes a rich message using an AI model. May return an error with a message "AICOMPOSE_FLOOD_PREMIUM" if Telegram Premium is required to send further requests
public struct ComposeRichMessageWithAi: Codable, Equatable, Hashable {

    /// Pass true to add emoji to the text
    public let addEmojis: Bool?

    /// Custom prompt that will be used instead of style_name; 0-getOption("text_composition_style_prompt_length_max") characters
    public let customPrompt: String?

    /// The original message
    public let message: InputRichMessage?

    /// Name of the style of the resulted text; handle updateTextCompositionStyles to get the list of supported styles; pass an empty string to keep the current style of the text or if a custom prompt is used
    public let styleName: String?

    /// Pass a language code to which the text will be translated; pass an empty string if translation isn't needed. See translateText.to_language_code for the list of supported values
    public let translateToLanguageCode: String?


    public init(
        addEmojis: Bool?,
        customPrompt: String?,
        message: InputRichMessage?,
        styleName: String?,
        translateToLanguageCode: String?
    ) {
        self.addEmojis = addEmojis
        self.customPrompt = customPrompt
        self.message = message
        self.styleName = styleName
        self.translateToLanguageCode = translateToLanguageCode
    }
}

