//
//  BusinessConnectedBot.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Describes a bot connected to a business account
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

