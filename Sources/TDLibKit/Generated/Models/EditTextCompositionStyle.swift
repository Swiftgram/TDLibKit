//
//  EditTextCompositionStyle.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-afbfb4d8
//  https://github.com/tdlib/td/tree/afbfb4d8
//

import Foundation


/// Edits a custom text composition style that was created by the current user
public struct EditTextCompositionStyle: Codable, Equatable, Hashable {

    /// Identifier of the custom emoji corresponding to the style
    public let customEmojiId: TdInt64?

    /// Name of the style
    public let name: String?

    /// Prompt that will be used for text composition; 1-getOption("text_composition_style_prompt_length_max") characters
    public let prompt: String?

    /// Pass true if the current user must be shown as the creator of the style
    public let showCreator: Bool?

    /// Title of the style; 1-getOption("text_composition_style_title_length_max") characters
    public let title: String?


    public init(
        customEmojiId: TdInt64?,
        name: String?,
        prompt: String?,
        showCreator: Bool?,
        title: String?
    ) {
        self.customEmojiId = customEmojiId
        self.name = name
        self.prompt = prompt
        self.showCreator = showCreator
        self.title = title
    }
}

