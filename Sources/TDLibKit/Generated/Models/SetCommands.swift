//
//  SetCommands.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Sets the list of commands supported by the bot for the given user scope and language; for bots only
public struct SetCommands: Codable {

    /// List of the bot's commands
    public let commands: [BotCommand]?

    /// A two-letter ISO 639-1 country code. If empty, the commands will be applied to all users from the given scope, for which language there are no dedicated commands
    public let languageCode: String?

    /// The scope to which the commands are relevant; pass null to change commands in the default bot command scope
    public let scope: BotCommandScope?


    public init(
        commands: [BotCommand]?,
        languageCode: String?,
        scope: BotCommandScope?
    ) {
        self.commands = commands
        self.languageCode = languageCode
        self.scope = scope
    }
}

