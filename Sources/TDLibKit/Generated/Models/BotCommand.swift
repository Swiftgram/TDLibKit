//
//  BotCommand.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-85c8c19b
//  https://github.com/tdlib/td/tree/85c8c19b
//

import Foundation


/// Represents a command supported by a bot
public struct BotCommand: Codable, Equatable, Hashable {

    /// Text of the bot command
    public let command: String

    public let description: String


    public init(
        command: String,
        description: String
    ) {
        self.command = command
        self.description = description
    }
}

