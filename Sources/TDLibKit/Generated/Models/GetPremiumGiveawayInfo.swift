//
//  GetPremiumGiveawayInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.28-4d90c2a2
//  https://github.com/tdlib/td/tree/4d90c2a2
//

import Foundation


/// Returns information about a Telegram Premium giveaway
public struct GetPremiumGiveawayInfo: Codable, Equatable, Hashable {

    /// Identifier of the channel chat which started the giveaway
    public let chatId: Int64?

    /// Identifier of the giveaway or a giveaway winners message in the chat
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

