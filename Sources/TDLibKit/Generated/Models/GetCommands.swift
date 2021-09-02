//
//  GetCommands.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Returns the list of commands supported by the bot for the given user scope and language; for bots only
public struct GetCommands: Codable {

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

