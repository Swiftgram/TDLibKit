//
//  AddBotMediaPreview.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-437e7f9a
//  https://github.com/tdlib/td/tree/437e7f9a
//

import Foundation


/// Adds a new media preview to the beginning of the list of media previews of a bot. Returns the added preview after addition is completed server-side. The total number of previews must not exceed getOption("bot_media_preview_count_max") for the given language
public struct AddBotMediaPreview: Codable, Equatable, Hashable {

    /// Identifier of the target bot. The bot must be owned and must have the main Web App
    public let botUserId: Int64?

    /// Content of the added preview
    public let content: InputStoryContent?

    /// A two-letter ISO 639-1 language code for which preview is added. If empty, then the preview will be shown to all users for whose languages there are no dedicated previews. If non-empty, then there must be an official language pack of the same name, which is returned by getLocalizationTargetInfo
    public let languageCode: String?


    public init(
        botUserId: Int64?,
        content: InputStoryContent?,
        languageCode: String?
    ) {
        self.botUserId = botUserId
        self.content = content
        self.languageCode = languageCode
    }
}

