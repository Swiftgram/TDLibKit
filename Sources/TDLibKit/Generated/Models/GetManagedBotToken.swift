//
//  GetManagedBotToken.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-07d3a097
//  https://github.com/tdlib/td/tree/07d3a097
//

import Foundation


/// Returns token of a managed bot; for bots only
public struct GetManagedBotToken: Codable, Equatable, Hashable {

    /// Identifier of the managed bot
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

