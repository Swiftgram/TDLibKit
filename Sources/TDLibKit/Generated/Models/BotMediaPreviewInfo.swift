//
//  BotMediaPreviewInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-0ece11a1
//  https://github.com/tdlib/td/tree/0ece11a1
//

import Foundation


/// Contains a list of media previews of a bot for the given language and the list of languages for which the bot has dedicated previews
public struct BotMediaPreviewInfo: Codable, Equatable, Hashable {

    /// List of language codes for which the bot has dedicated previews
    public let languageCodes: [String]

    /// List of media previews
    public let previews: [BotMediaPreview]


    public init(
        languageCodes: [String],
        previews: [BotMediaPreview]
    ) {
        self.languageCodes = languageCodes
        self.previews = previews
    }
}

