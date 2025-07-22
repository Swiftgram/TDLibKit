//
//  EditBotMediaPreview.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-da4e46f2
//  https://github.com/tdlib/td/tree/da4e46f2
//

import Foundation


/// Replaces media preview in the list of media previews of a bot. Returns the new preview after edit is completed server-side
public struct EditBotMediaPreview: Codable, Equatable, Hashable {

    /// Identifier of the target bot. The bot must be owned and must have the main Web App
    public let botUserId: Int64?

    /// Content of the new preview
    public let content: InputStoryContent?

    /// File identifier of the media to replace
    public let fileId: Int?

    /// Language code of the media preview to edit
    public let languageCode: String?


    public init(
        botUserId: Int64?,
        content: InputStoryContent?,
        fileId: Int?,
        languageCode: String?
    ) {
        self.botUserId = botUserId
        self.content = content
        self.fileId = fileId
        self.languageCode = languageCode
    }
}

