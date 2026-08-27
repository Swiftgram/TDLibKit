//
//  BotCommand.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-ca58a8b2
//  https://github.com/tdlib/td/tree/ca58a8b2
//

import Foundation


/// Represents a command supported by a bot
public struct BotCommand: Codable, Equatable, Hashable {

    /// Text of the bot command
    public let command: String

    public let description: String

    /// True, if the command must send an ephemeral message instead of a regular one
    public let isEphemeral: Bool


    public init(
        command: String,
        description: String,
        isEphemeral: Bool
    ) {
        self.command = command
        self.description = description
        self.isEphemeral = isEphemeral
    }
}

