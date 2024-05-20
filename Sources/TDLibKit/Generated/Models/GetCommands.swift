//
//  GetCommands.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Returns the list of commands supported by the bot for the given user scope and language; for bots only
public struct GetCommands: Codable, Equatable, Hashable {

    /// A two-letter ISO 639-1 language code or an empty string
    public let languageCode: String?

    /// The scope to which the commands are relevant; pass null to get commands in the default bot command scope
    public let scope: BotCommandScope?


    public init(
        languageCode: String?,
        scope: BotCommandScope?
    ) {
        self.languageCode = languageCode
        self.scope = scope
    }
}

