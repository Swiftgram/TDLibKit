//
//  SetChatDirectMessagesGroup.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Changes direct messages group settings for a channel chat; requires owner privileges in the chat
public struct SetChatDirectMessagesGroup: Codable, Equatable, Hashable {

    /// Identifier of the channel chat
    public let chatId: Int64?

    /// Pass true if the direct messages group is enabled for the channel chat; pass false otherwise
    public let isEnabled: Bool?

    /// The new number of Telegram Stars that must be paid for each message that is sent to the direct messages chat unless the sender is an administrator of the channel chat; 0-getOption("paid_message_star_count_max"). The channel will receive getOption("paid_message_earnings_per_mille") Telegram Stars for each 1000 Telegram Stars paid for message sending. Requires supergroupFullInfo.can_enable_paid_messages for positive amounts
    public let paidMessageStarCount: Int64?


    public init(
        chatId: Int64?,
        isEnabled: Bool?,
        paidMessageStarCount: Int64?
    ) {
        self.chatId = chatId
        self.isEnabled = isEnabled
        self.paidMessageStarCount = paidMessageStarCount
    }
}

