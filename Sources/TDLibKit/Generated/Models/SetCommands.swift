//
//  SetCommands.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Sets the list of commands supported by the bot for the given user scope and language; for bots only
public struct SetCommands: Codable, Equatable, Hashable {

    /// List of the bot's commands
    public let commands: [BotCommand]?

    /// A two-letter ISO 639-1 language code. If empty, the commands will be applied to all users from the given scope, for which language there are no dedicated commands
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

