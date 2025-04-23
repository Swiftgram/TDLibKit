//
//  GetChatRevenueWithdrawalUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-6e32e56b
//  https://github.com/tdlib/td/tree/6e32e56b
//

import Foundation


/// Returns a URL for chat revenue withdrawal; requires owner privileges in the channel chat or the bot. Currently, this method can be used only if getOption("can_withdraw_chat_revenue") for channels with supergroupFullInfo.can_get_revenue_statistics == true or bots with userFullInfo.bot_info.can_get_revenue_statistics == true
public struct GetChatRevenueWithdrawalUrl: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// The 2-step verification password of the current user
    public let password: String?


    public init(
        chatId: Int64?,
        password: String?
    ) {
        self.chatId = chatId
        self.password = password
    }
}

