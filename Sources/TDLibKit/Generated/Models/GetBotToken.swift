//
//  GetBotToken.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-1677a0c7
//  https://github.com/tdlib/td/tree/1677a0c7
//

import Foundation


/// Returns token of a created bot; for bots only
public struct GetBotToken: Codable, Equatable, Hashable {

    /// Identifier of the created bot
    public let botUserId: Int64?

    /// Pass true to revoke the current token and create a new one
    public let revoke: Bool?


    public init(
        botUserId: Int64?,
        revoke: Bool?
    ) {
        self.botUserId = botUserId
        self.revoke = revoke
    }
}

