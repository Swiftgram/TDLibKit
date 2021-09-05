//
//  DeleteCommands.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
//

import Foundation


/// Deletes commands supported by the bot for the given user scope and language; for bots only
public struct DeleteCommands: Codable {

    /// A two-letter ISO 639-1 country code or an empty string
    public let languageCode: String

    /// The scope to which the commands are relevant
    public let scope: BotCommandScope


    public init(
        languageCode: String,
        scope: BotCommandScope
    ) {
        self.languageCode = languageCode
        self.scope = scope
    }
}

