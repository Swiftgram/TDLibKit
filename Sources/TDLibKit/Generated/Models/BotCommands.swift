//
//  BotCommands.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-85c8c19b
//  https://github.com/tdlib/td/tree/85c8c19b
//

import Foundation


/// Contains a list of bot commands
public struct BotCommands: Codable, Equatable, Hashable {

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

