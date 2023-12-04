//
//  DeleteCommands.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-3f00bebf
//  https://github.com/tdlib/td/tree/3f00bebf
//

import Foundation


/// Deletes commands supported by the bot for the given user scope and language; for bots only
public struct DeleteCommands: Codable, Equatable, Hashable {

    /// A two-letter ISO 639-1 language code or an empty string
    public let languageCode: String?

    /// The scope to which the commands are relevant; pass null to delete commands in the default bot command scope
    public let scope: BotCommandScope?


    public init(
        languageCode: String?,
        scope: BotCommandScope?
    ) {
        self.languageCode = languageCode
        self.scope = scope
    }
}

