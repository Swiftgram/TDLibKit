//
//  CreateTextCompositionStyle.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.64-e0943d06
//  https://github.com/tdlib/td/tree/e0943d06
//

import Foundation


/// Creates a custom text composition style. May return an error with a message "TONES_SAVED_TOO_MANY" if the maximum number of added custom styles has been reached
public struct CreateTextCompositionStyle: Codable, Equatable, Hashable {

    /// Identifier of the custom emoji corresponding to the style
    public let customEmojiId: TdInt64?

    /// Prompt that will be used for text composition; 1-getOption("text_composition_style_prompt_length_max") characters
    public let prompt: String?

    /// Pass true if the current user must be shown as the creator of the style
    public let showCreator: Bool?

    /// Title of the style; 1-getOption("text_composition_style_title_length_max") characters
    public let title: String?


    public init(
        customEmojiId: TdInt64?,
        prompt: String?,
        showCreator: Bool?,
        title: String?
    ) {
        self.customEmojiId = customEmojiId
        self.prompt = prompt
        self.showCreator = showCreator
        self.title = title
    }
}

