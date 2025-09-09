//
//  SetChatPaidMessageStarCount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.53-bdec6af5
//  https://github.com/tdlib/td/tree/bdec6af5
//

import Foundation


/// Changes the amount of Telegram Stars that must be paid to send a message to a supergroup chat; requires can_restrict_members administrator right and supergroupFullInfo.can_enable_paid_messages
public struct SetChatPaidMessageStarCount: Codable, Equatable, Hashable {

    /// Identifier of the supergroup chat
    public let chatId: Int64?

    /// The new number of Telegram Stars that must be paid for each message that is sent to the supergroup chat unless the sender is an administrator of the chat; 0-getOption("paid_message_star_count_max"). The supergroup will receive getOption("paid_message_earnings_per_mille") Telegram Stars for each 1000 Telegram Stars paid for message sending
    public let paidMessageStarCount: Int64?


    public init(
        chatId: Int64?,
        paidMessageStarCount: Int64?
    ) {
        self.chatId = chatId
        self.paidMessageStarCount = paidMessageStarCount
    }
}

