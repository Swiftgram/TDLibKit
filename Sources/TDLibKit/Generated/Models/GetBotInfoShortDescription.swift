//
//  GetBotInfoShortDescription.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Returns the text shown on a bot's profile page and sent together with the link when users share the bot in the given language. Can be called only if userTypeBot.can_be_edited == true
public struct GetBotInfoShortDescription: Codable, Equatable, Hashable {

    /// Identifier of the target bot
    public let botUserId: Int64?

    /// A two-letter ISO 639-1 language code or an empty string
    public let languageCode: String?


    public init(
        botUserId: Int64?,
        languageCode: String?
    ) {
        self.botUserId = botUserId
        self.languageCode = languageCode
    }
}

