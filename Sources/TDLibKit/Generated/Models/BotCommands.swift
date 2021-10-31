//
//  BotCommands.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-f4d20e20
//  https://github.com/tdlib/td/tree/f4d20e20
//

import Foundation


/// Contains a list of bot commands
public struct BotCommands: Codable {

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

