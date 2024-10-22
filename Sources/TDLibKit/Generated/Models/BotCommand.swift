//
//  BotCommand.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.38-d321984b
//  https://github.com/tdlib/td/tree/d321984b
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

