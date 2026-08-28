//
//  BusinessConnectedBot.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Describes a business bot connected to an account
public struct BusinessConnectedBot: Codable, Equatable, Hashable {

    /// User identifier of the bot
    public let botUserId: Int64

    /// Private chats that will be accessible to the bot
    public let recipients: BusinessRecipients

    /// Rights of the bot
    public let rights: BusinessBotRights


    public init(
        botUserId: Int64,
        recipients: BusinessRecipients,
        rights: BusinessBotRights
    ) {
        self.botUserId = botUserId
        self.recipients = recipients
        self.rights = rights
    }
}

