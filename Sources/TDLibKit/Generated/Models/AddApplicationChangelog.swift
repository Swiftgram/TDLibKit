//
//  AddApplicationChangelog.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
//

import Foundation


/// Adds server-provided application changelog as messages to the chat 777000 (Telegram); for official applications only. Returns a 404 error if nothing changed
public struct AddApplicationChangelog: Codable, Equatable {

    /// The previous application version
    public let previousApplicationVersion: String?


    public init(previousApplicationVersion: String?) {
        self.previousApplicationVersion = previousApplicationVersion
    }
}

