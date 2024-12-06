//
//  BusinessConnectedBot.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-c85b20a4
//  https://github.com/tdlib/td/tree/c85b20a4
//

import Foundation


/// Describes a bot connected to a business account
public struct BusinessConnectedBot: Codable, Equatable, Hashable {

    /// User identifier of the bot
    public let botUserId: Int64

    /// True, if the bot can send messages to the private chats; false otherwise
    public let canReply: Bool

    /// Private chats that will be accessible to the bot
    public let recipients: BusinessRecipients


    public init(
        botUserId: Int64,
        canReply: Bool,
        recipients: BusinessRecipients
    ) {
        self.botUserId = botUserId
        self.canReply = canReply
        self.recipients = recipients
    }
}

