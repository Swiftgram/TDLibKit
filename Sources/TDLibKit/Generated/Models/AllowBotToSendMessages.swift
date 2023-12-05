//
//  AllowBotToSendMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-85c8c19b
//  https://github.com/tdlib/td/tree/85c8c19b
//

import Foundation


/// Allows the specified bot to send messages to the user
public struct AllowBotToSendMessages: Codable, Equatable, Hashable {

    /// Identifier of the target bot
    public let botUserId: Int64?


    public init(botUserId: Int64?) {
        self.botUserId = botUserId
    }
}

