//
//  TextCompositionParameters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
//

import Foundation


/// Describes parameters of text composition with AI
public struct TextCompositionParameters: Codable, Equatable, Hashable {

    /// True, if emoji will be added to the text
    public let addEmojis: Bool

    /// True, if the text will be fixed in the same way as by fixTextWithAi
    public let fixText: Bool

    /// Name of the style of the resulting text; may be empty if none. Handle updateTextCompositionStyles to get the list of supported styles
    public let styleName: String

    /// Language code to which the text will be translated; may be empty if none. See translateText.to_language_code for the list of supported values
    public let translateToLanguageCode: String


    public init(
        addEmojis: Bool,
        fixText: Bool,
        styleName: String,
        translateToLanguageCode: String
    ) {
        self.addEmojis = addEmojis
        self.fixText = fixText
        self.styleName = styleName
        self.translateToLanguageCode = translateToLanguageCode
    }
}

