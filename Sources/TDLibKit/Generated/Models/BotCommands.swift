//
//  BotCommands.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-906d773d
//  https://github.com/tdlib/td/tree/906d773d
//

import Foundation


/// Contains a list of bot commands
public struct BotCommands: Codable, Equatable {

    /// Bot's user identifier
    public let botUserId: Int64

    /// List of bot commands
    public let commands: [BotCommand]


    public init(
        botUserId: Int64,
        commands: [BotCommand]
    ) {
        self.botUserId = botUserId
        self.commands = commands
    }
}

