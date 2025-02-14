//
//  GetBotMediaPreviewInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.45-721300bc
//  https://github.com/tdlib/td/tree/721300bc
//

import Foundation


/// Returns the list of media previews for the given language and the list of languages for which the bot has dedicated previews
public struct GetBotMediaPreviewInfo: Codable, Equatable, Hashable {

    /// Identifier of the target bot. The bot must be owned and must have the main Web App
    public let botUserId: Int64?

    /// A two-letter ISO 639-1 language code for which to get previews. If empty, then default previews are returned
    public let languageCode: String?


    public init(
        botUserId: Int64?,
        languageCode: String?
    ) {
        self.botUserId = botUserId
        self.languageCode = languageCode
    }
}

