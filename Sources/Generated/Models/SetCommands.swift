//
//  SetCommands.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Sets the list of commands supported by the bot for the given user scope and language; for bots only
public struct SetCommands: Codable {

    /// List of the bot's commands
    public let commands: [BotCommand]

    /// A two-letter ISO 639-1 country code. If empty, the commands will be applied to all users from the given scope, for which language there are no dedicated commands
    public let languageCode: String

    /// The scope to which the commands are relevant
    public let scope: BotCommandScope


    public init(
        commands: [BotCommand],
        languageCode: String,
        scope: BotCommandScope
    ) {
        self.commands = commands
        self.languageCode = languageCode
        self.scope = scope
    }
}

