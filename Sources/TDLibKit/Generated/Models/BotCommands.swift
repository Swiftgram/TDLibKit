//
//  BotCommands.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Contains a list of bot commands
public struct BotCommands: Codable {

    /// Bot's user identifier
    public let botUserId: Int

    /// List of bot commands
    public let commands: [BotCommand]


    public init(
        botUserId: Int,
        commands: [BotCommand]
    ) {
        self.botUserId = botUserId
        self.commands = commands
    }
}

