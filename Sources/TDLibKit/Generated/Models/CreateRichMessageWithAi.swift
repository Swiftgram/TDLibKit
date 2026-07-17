//
//  CreateRichMessageWithAi.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-d8d46dfa
//  https://github.com/tdlib/td/tree/d8d46dfa
//

import Foundation


/// Creates a new rich message using an AI model. May return an error with a message "AICOMPOSE_FLOOD_PREMIUM" if Telegram Premium is required to send further requests
public struct CreateRichMessageWithAi: Codable, Equatable, Hashable {

    /// Pass true to add emoji to the text
    public let addEmojis: Bool?

    /// Pass a language code in which the text will be created
    public let languageCode: String?

    /// Prompt that will be used to create the message; 0-getOption("text_composition_style_prompt_length_max") characters
    public let prompt: String?


    public init(
        addEmojis: Bool?,
        languageCode: String?,
        prompt: String?
    ) {
        self.addEmojis = addEmojis
        self.languageCode = languageCode
        self.prompt = prompt
    }
}

